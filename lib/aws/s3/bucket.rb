s3 = AWS::S3.new
bucket = s3.buckets.create('dns-compat-bucket-name')
bucket = s3.buckets[''] # makes no request
bucket.exists? #=> returns true/false