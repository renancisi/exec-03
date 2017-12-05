About this document
===================

Script that validates the status of the applications generated in the json file, product of exercise 2.

# Table of Contents
- [Prerequisites](#prerequisites)
- [Quick Start](#quick-start)
- [Example](#example-e-mail-source)
- [Documentation](#documentation-and-reasons-for-the-used-technologies)

# Prerequisites

 * install wget(debian like): `apt-get install wget`
 * install sendEmail(debian like): `apt-get install sendemail`
 
 # Quick start

The fastest way to get running:

 * permission to execute: `chmod +x lab-exec03-nexxera.sh`
 * execute: `./lab-exec03-nexxera.sh`

## Example E-mail Source

```yaml
Return-Path: <labnexxera@gmail.com>
Received: from tux ([2804:7f5:f080:d729:de85:deff:fe91:1c95])
        by smtp.gmail.com with ESMTPSA id b10sm453232qti.76.2017.12.05.11.39.03
        for <labnexxera@gmail.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Dec 2017 11:39:04 -0800 (PST)
Message-ID: <527760.146741883-sendEmail@tux>
From: "labnexxera@gmail.com" <labnexxera@gmail.com>
To: "labnexxera@gmail.com" <labnexxera@gmail.com>
Subject: Serviços com status Down
Date: Tue, 5 Dec 2017 19:38:58 +0000
X-Mailer: sendEmail-1.56
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-943456.387453811"

------MIME delimiter for sendEmail-943456.387453811
Content-Type: text/plain;
        charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

Os serviços: "mongo" "pgsql" estão com status: Down

------MIME delimiter for sendEmail-943456.387453811--
```

# Documentation and reasons for the used technologies

for exercise 3 and its simplicity, I chose shell script with sendemail for being a light and functional mta in most linux distributions
