      *> TRANSFER record: one settled transfer, fixed width.
      *> Layout is a stub; fields are finalized by the haunted-bank spec.
       01  TRANSFER-RECORD.
           05  TR-ID              PIC X(16).
           05  TR-ACCOUNT         PIC X(12).
           05  TR-NAME            PIC X(30).
           05  TR-AMOUNT          PIC 9(5)V99.
           05  TR-VALUE-DATE      PIC 9(8).
