# lambda_functions/create_url_lambda/index.py
import json
import os
import random
import string
import boto3

# Initialize DynamoDB client (or define it outside handler for re-use)
dynamodb = boto3.resource('dynamodb')
table_name = os.environ.get('TABLE_NAME', 'ShortenedUrls') # Get table name from environment variable
table = dynamodb.Table(table_name)

def generate_short_code(length=6):
    """Generates a random short code."""
    characters = string.ascii_letters + string.digits
    return ''.join(random.choice(characters) for i in range(length))

def handler(event, context):
    print(f"Received event: {json.dumps(event)}")

    try:
        if 'body' not in event:
            return {
                'statusCode': 400,
                'headers': { 'Content-Type': 'application/json' },
                'body': json.dumps({'message': 'Missing request body'})
            }

        body = json.loads(event['body'])
        long_url = body.get('url')

        if not long_url:
            return {
                'statusCode': 400,
                'headers': { 'Content-Type': 'application/json' },
                'body': json.dumps({'message': 'URL not provided'})
            }

        short_code = generate_short_code()

        # Save to DynamoDB
        table.put_item(
            Item={
                'short_code': short_code,
                'long_url': long_url,
                'created_at': boto3.util.current_time_millis()
            }
        )

        return {
            'statusCode': 200,
            'headers': { 'Content-Type': 'application/json' },
            'body': json.dumps({
                'long_url': long_url,
                'short_url': f"https://your.api.endpoint/{{short_code}}" # Replace with your actual API Gateway endpoint
            })
        }

    except Exception as e:
        print(f"Error: {e}")
        return {
            'statusCode': 500,
            'headers': { 'Content-Type': 'application/json' },
            'body': json.dumps({'message': 'Internal Server Error', 'error': str(e)})
        }