class HomeController < ApplicationController
  def index
    
  end
  
  def upload
    
    hyeon = params[:hyeon]  
    poster = HahaUploader.new
    hyeon.inspect
    poster.store!(hyeon)
    
    redirect_to '/home/index'
  end
  
  def list
  require 'aws-sdk'

    Aws.config.update({
      region: 'ap-northeast-2',
      endpoint: 'https://s3.ap-northeast-2.amazonaws.com', # optional, defaults to nil,
      credentials: Aws::Credentials.new('key', 'value')
    })
    
    s3 = Aws::S3::Resource.new
    
    # reference an existing bucket by name
    bucket = s3.bucket('bucketname')
    
    #puts bucket.objects.methods
    
    # enumerate every object in a bucket
    bucket.objects.each do |obj|
    puts obj.public_url
end
  end
end



  

  


