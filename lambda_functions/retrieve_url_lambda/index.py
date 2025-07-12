# lambda_functions/retrieve_url_lambda/index.py
import json
import os
import boto3

# Initialize DynamoDB client
dynamodb = boto3.resource('dynamodb')
table_name = os.environ.get('TABLE_NAME', 'ShortenedUrls') # Get table name from environment variable
table = dynamodb.Table(table_name)

def handler(event, context):
    print(f"Received event: {json.dumps(event)}")

    try:
        # For API Gateway HTTP API, path parameters are in event['pathParameters']
        short_code = event.get('pathParameters', {}).get('short_code')

        if not short_code:
            return {
                'statusCode': 400,
                'headers': { 'Content-Type': 'application/json' },
                'body': json.dumps({'message': 'Short code not provided'})
            }

        response = table.get_item(Key={'short_code': short_code})
        item = response.get('Item')

        if item:
            long_url = item['long_url']
            # Perform a 301 redirect
            return {
                'statusCode': 301,
                'headers': {
                    'Location': long_url
                },
                'body': '' # Empty body for redirect
            }
        else:
            return {
                'statusCode': 404,
                'headers': { 'Content-Type': 'application/json' },
                'body': json.dumps({'message': 'Short code not found'})
            }

    except Exception as e:
        print(f"Error: {e}")
        return {
            'statusCode': 500,
            'headers': { 'Content-Type': 'application/json' },
            'body': json.dumps({'message': 'Internal Server Error', 'error': str(e)})
        }