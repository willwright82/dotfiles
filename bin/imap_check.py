#!/usr/bin/env python
"""
    small script to check for unread count on imap inbox
"""
import imaplib
import email

IMAPSERVER = 'imap@gmail.com'
USER = 'user@gmail.com'
PASSWORD = ''

try:
    mail = imaplib.IMAP4_SSL(IMAPSERVER)
    # imaplib module implements connection based on IMAPv4 protocol
    mail.login(USER, PASSWORD)
    # >> ('OK', [username at gmail.com Vineet authenticated (Success)'])
    mail.list() # Lists all labels in GMail
    mail.select("inbox", True) # connect to inbox.
    return_code, mail_ids = mail.search(None, 'UnSeen')
    count = len(mail_ids[0].split(" "))
except:
    count = 'Offline'

print count
