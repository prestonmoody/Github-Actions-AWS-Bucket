import pytest
import boto3

@pytest.fixture
def s3_client():
    return boto3.client('s3', region_name='us-west-2')

def test_s3_bucket_exists(s3_client):
    bucket_name = "renos3"
    response = s3_client.list_buckets()
    bucket_names = [bucket['Name'] for bucket in response['Buckets']]
    assert bucket_name in bucket_names

