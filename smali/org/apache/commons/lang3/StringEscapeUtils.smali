.class public Lorg/apache/commons/lang3/StringEscapeUtils;
.super Ljava/lang/Object;
.source "StringEscapeUtils.java"


# static fields
.field public static final ESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XML10:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XML11:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 42
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    const/4 v1, 0x6

    new-array v2, v1, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v3, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 44
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 45
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_ESCAPE()[[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-instance v3, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    const/16 v6, 0x1f

    new-array v7, v6, [[Ljava/lang/String;

    const-string v8, "\u0000"

    const-string v9, ""

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const-string v8, "\u0001"

    const-string v9, ""

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    const-string v8, "\u0002"

    const-string v9, ""

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const-string v8, "\u0003"

    const-string v10, ""

    filled-new-array {v8, v10}, [Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x3

    aput-object v8, v7, v10

    const-string v8, "\u0004"

    const-string v11, ""

    filled-new-array {v8, v11}, [Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x4

    aput-object v8, v7, v11

    const-string v8, "\u0005"

    const-string v12, ""

    filled-new-array {v8, v12}, [Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x5

    aput-object v8, v7, v12

    const-string v8, "\u0006"

    const-string v13, ""

    filled-new-array {v8, v13}, [Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    const-string v8, "\u0007"

    const-string v13, ""

    filled-new-array {v8, v13}, [Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x7

    aput-object v8, v7, v13

    const-string v8, "\u0008"

    const-string v14, ""

    filled-new-array {v8, v14}, [Ljava/lang/String;

    move-result-object v8

    const/16 v14, 0x8

    aput-object v8, v7, v14

    const-string v8, "\u000b"

    const-string v15, ""

    filled-new-array {v8, v15}, [Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x9

    aput-object v8, v7, v15

    const-string v8, "\u000c"

    const-string v15, ""

    filled-new-array {v8, v15}, [Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0xa

    aput-object v8, v7, v15

    const-string v8, "\u000e"

    const-string v15, ""

    filled-new-array {v8, v15}, [Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0xb

    aput-object v8, v7, v15

    const-string v8, "\u000f"

    const-string v15, ""

    filled-new-array {v8, v15}, [Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0xc

    aput-object v8, v7, v15

    const-string v8, "\u0010"

    const-string v15, ""

    filled-new-array {v8, v15}, [Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0xd

    aput-object v8, v7, v15

    const-string v8, "\u0011"

    const-string v15, ""

    filled-new-array {v8, v15}, [Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0xe

    aput-object v8, v7, v15

    const-string v8, "\u0012"

    const-string v13, ""

    filled-new-array {v8, v13}, [Ljava/lang/String;

    move-result-object v8

    const/16 v13, 0xf

    aput-object v8, v7, v13

    const-string v8, "\u0013"

    const-string v13, ""

    filled-new-array {v8, v13}, [Ljava/lang/String;

    move-result-object v8

    const/16 v13, 0x10

    aput-object v8, v7, v13

    const-string v8, "\u0014"

    const-string v13, ""

    filled-new-array {v8, v13}, [Ljava/lang/String;

    move-result-object v8

    const/16 v13, 0x11

    aput-object v8, v7, v13

    const-string v8, "\u0015"

    const-string v13, ""

    filled-new-array {v8, v13}, [Ljava/lang/String;

    move-result-object v8

    const/16 v13, 0x12

    aput-object v8, v7, v13

    const-string v8, "\u0016"

    const-string v13, ""

    filled-new-array {v8, v13}, [Ljava/lang/String;

    move-result-object v8

    const/16 v13, 0x13

    aput-object v8, v7, v13

    const-string v8, "\u0017"

    const-string v13, ""

    filled-new-array {v8, v13}, [Ljava/lang/String;

    move-result-object v8

    const/16 v13, 0x14

    aput-object v8, v7, v13

    const-string v8, "\u0018"

    const-string v13, ""

    filled-new-array {v8, v13}, [Ljava/lang/String;

    move-result-object v8

    const/16 v13, 0x15

    aput-object v8, v7, v13

    const-string v8, "\u0019"

    const-string v13, ""

    filled-new-array {v8, v13}, [Ljava/lang/String;

    move-result-object v8

    const/16 v13, 0x16

    aput-object v8, v7, v13

    const-string v8, "\u001a"

    const-string v13, ""

    filled-new-array {v8, v13}, [Ljava/lang/String;

    move-result-object v8

    const/16 v13, 0x17

    aput-object v8, v7, v13

    const-string v8, "\u001b"

    const-string v13, ""

    filled-new-array {v8, v13}, [Ljava/lang/String;

    move-result-object v8

    const/16 v13, 0x18

    aput-object v8, v7, v13

    const-string v8, "\u001c"

    const-string v13, ""

    filled-new-array {v8, v13}, [Ljava/lang/String;

    move-result-object v8

    const/16 v13, 0x19

    aput-object v8, v7, v13

    const-string v8, "\u001d"

    const-string v13, ""

    filled-new-array {v8, v13}, [Ljava/lang/String;

    move-result-object v8

    const/16 v13, 0x1a

    aput-object v8, v7, v13

    const-string v8, "\u001e"

    const-string v13, ""

    filled-new-array {v8, v13}, [Ljava/lang/String;

    move-result-object v8

    const/16 v13, 0x1b

    aput-object v8, v7, v13

    const-string v8, "\u001f"

    const-string v13, ""

    filled-new-array {v8, v13}, [Ljava/lang/String;

    move-result-object v8

    const/16 v13, 0x1c

    aput-object v8, v7, v13

    const-string v8, "\ufffe"

    const-string v13, ""

    filled-new-array {v8, v13}, [Ljava/lang/String;

    move-result-object v8

    const/16 v13, 0x1d

    aput-object v8, v7, v13

    const-string v8, "\uffff"

    const-string v13, ""

    filled-new-array {v8, v13}, [Ljava/lang/String;

    move-result-object v8

    const/16 v13, 0x1e

    aput-object v8, v7, v13

    invoke-direct {v3, v7}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v3, v2, v9

    const/16 v3, 0x84

    const/16 v7, 0x7f

    .line 80
    invoke-static {v7, v3}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v8

    aput-object v8, v2, v10

    const/16 v8, 0x9f

    const/16 v13, 0x86

    .line 81
    invoke-static {v13, v8}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v16

    aput-object v16, v2, v11

    new-instance v1, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;

    invoke-direct {v1}, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;-><init>()V

    aput-object v1, v2, v12

    invoke-direct {v0, v2}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML10:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 94
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v1, v14, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 96
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 97
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_ESCAPE()[[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    new-array v8, v12, [[Ljava/lang/String;

    const-string v13, "\u0000"

    const-string v12, ""

    filled-new-array {v13, v12}, [Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v4

    const-string v12, "\u000b"

    const-string v13, "&#11;"

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v5

    const-string v12, "\u000c"

    const-string v13, "&#12;"

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    const-string v12, "\ufffe"

    const-string v13, ""

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v10

    const-string v12, "\uffff"

    const-string v13, ""

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v11

    invoke-direct {v2, v8}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v9

    .line 106
    invoke-static {v5, v14}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v2

    aput-object v2, v1, v10

    .line 107
    invoke-static {v15, v6}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v2

    aput-object v2, v1, v11

    .line 108
    invoke-static {v7, v3}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x86

    const/16 v3, 0x9f

    .line 109
    invoke-static {v2, v3}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;

    invoke-direct {v2}, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;-><init>()V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML11:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 122
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v1, v9, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 124
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 125
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 137
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v1, v10, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 139
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 140
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 141
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->HTML40_EXTENDED_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v9

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 156
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v1, v10, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 158
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 159
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    new-array v3, v4, [Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    aput-object v2, v1, v9

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 172
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v1, v11, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 174
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 175
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 176
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->HTML40_EXTENDED_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v9

    new-instance v2, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    new-array v3, v4, [Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    aput-object v2, v1, v10

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 189
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v1, v10, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 191
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 192
    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    new-array v3, v4, [Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    aput-object v2, v1, v9

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escapeHtml3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 262
    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 246
    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeXml10(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 333
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML10:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeXml11(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 363
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML11:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unescapeHtml3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 299
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unescapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 285
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unescapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 384
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
