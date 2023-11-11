# creating S3 buket for raw data 
resource "aws_s3_bucket" "ny_raw_taxi_data" {
  bucket = "ny_raw_taxi_data"
}


#creating s3 bucket for transformed data 
resource "aws_s3_bucket" "ny_transformed_taxi_data" {
  bucket = "ny_transformed_taxi_data"
}

/*
resource "null_resource" "add_data_to_s3_lake" {
  provisioner "local-exec" {
    command = "aws s3 cp s3://nyc-tlc/csv_backup/ s3://${aws_s3_bucket.ny_raw_taxi_data}-raw/nyc-taxi/yellow-tripdata/ --exclude '*' --include 'yellow_tripdata_2020*' --recursive"
  }
}
resource "null_resource" "add_data_to_s3_lake" {
  provisioner "local-exec" {
    command = "aws s3 cp 's3://nyc-tlc/misc/taxi _zone_lookup.csv' s3://${aws_s3_bucket.ny_raw_taxi_data}-raw/nyc-taxi/taxi_zone_lookup/taxi_zone_lookup.csv"

  }
}

*/