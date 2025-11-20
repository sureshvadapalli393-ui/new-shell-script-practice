#!/bin/bash

{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-09c813fb71547fc4f",
            "InstanceId": "i-03be6c2ce14f6f2db",
            "InstanceType": "t2.micro",
            "LaunchTime": "2025-11-20T07:39:51+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-1d",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-31-125.ec2.internal",
            "PrivateIpAddress": "172.31.31.125",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
            },
            "StateTransitionReason": "",
            "SubnetId": "subnet-0948a81adc1c44e0c",
            "VpcId": "vpc-06d9bf42fb4ec594b",
            "Architecture": "x86_64",
            "BlockDeviceMappings": [],
            "ClientToken": "a11320b6-d089-41ba-bad5-a4bfe31f9390",
            "EbsOptimized": false,
            "EnaSupport": true,
            "Hypervisor": "xen",
            "NetworkInterfaces": [
                {
                    "Attachment": {
                        "AttachTime": "2025-11-20T07:39:51+00:00",
                        "AttachmentId": "eni-attach-053f3e90cfbbf4e31",
                        "DeleteOnTermination": true,
                        "DeviceIndex": 0,
                        "Status": "attaching",
                        "NetworkCardIndex": 0
                    },
                    "Description": "",
                    "Groups": [
                        {
                            "GroupName": "allow all",
                            "GroupId": "sg-0c8311807a45cafaa"
                        }
                    ],
                    "Ipv6Addresses": [],
                    "MacAddress": "0a:ff:c1:a1:6d:cd",
                    "NetworkInterfaceId": "eni-043da4ea43a28b090",
                    "OwnerId": "980573775816",
                    "PrivateDnsName": "ip-172-31-31-125.ec2.internal",
                    "PrivateIpAddress": "172.31.31.125",
                    "PrivateIpAddresses": [
                        {
                            "Primary": true,
                            "PrivateDnsName": "ip-172-31-31-125.ec2.internal",
                            "PrivateIpAddress": "172.31.31.125"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Status": "in-use",
                    "SubnetId": "subnet-0948a81adc1c44e0c",
                    "VpcId": "vpc-06d9bf42fb4ec594b",
                    "InterfaceType": "interface"
                }
            ],
            "RootDeviceName": "/dev/sda1",
            "RootDeviceType": "ebs",
            "SecurityGroups": [
                {
                    "GroupName": "allow all",
                    "GroupId": "sg-0c8311807a45cafaa"
                }
            ],
            "SourceDestCheck": true,
            "StateReason": {
                "Code": "pending",
                "Message": "pending"
            },
            "Tags": [
                {
                    "Key": "Name",
                    "Value": "MyServer"
                }
            ],
            "VirtualizationType": "hvm",
            "CpuOptions": {
                "CoreCount": 1,
                "ThreadsPerCore": 1
            },
            "CapacityReservationSpecification": {
                "CapacityReservationPreference": "open"
            },
            "MetadataOptions": {
                "State": "pending",
                "HttpTokens": "optional",
                "HttpPutResponseHopLimit": 1,
                "HttpEndpoint": "enabled",
                "HttpProtocolIpv6": "disabled",
                "InstanceMetadataTags": "disabled"
            },
            "EnclaveOptions": {
                "Enabled": false
            },
            "BootMode": "uefi-preferred",
            "PrivateDnsNameOptions": {
                "HostnameType": "ip-name",
                "EnableResourceNameDnsARecord": false,
                "EnableResourceNameDnsAAAARecord": false
            },
            "MaintenanceOptions": {
                "AutoRecovery": "default"
            },
            "CurrentInstanceBootMode": "legacy-bios"
        }
    ],
    "OwnerId": "980573775816",
    "ReservationId": "r-0af73e257a679d838"
}
