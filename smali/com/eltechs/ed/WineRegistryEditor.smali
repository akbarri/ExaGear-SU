.class public Lcom/eltechs/ed/WineRegistryEditor;
.super Ljava/lang/Object;
.source "WineRegistryEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;,
        Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;
    }
.end annotation


# instance fields
.field private mChanged:Z

.field private mContents:Ljava/lang/String;

.field private mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/eltechs/ed/WineRegistryEditor;->mFile:Ljava/io/File;

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/eltechs/ed/WineRegistryEditor;->mChanged:Z

    return-void
.end method

.method private createKey(Ljava/lang/String;)Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;
    .locals 8

    .line 167
    iget-object v0, p0, Lcom/eltechs/ed/WineRegistryEditor;->mContents:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/eltechs/ed/WineRegistryEditor;->mContents:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/eltechs/ed/WineRegistryEditor;->stringToInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] %d\n"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/ed/WineRegistryEditor;->mContents:Ljava/lang/String;

    .line 169
    iget-object p1, p0, Lcom/eltechs/ed/WineRegistryEditor;->mContents:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v1

    .line 171
    new-instance v1, Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;

    invoke-direct {v1, p0, v0, p1, p1}, Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;-><init>(Lcom/eltechs/ed/WineRegistryEditor;III)V

    return-object v1
.end method

.method private getKeyLocation(Ljava/lang/String;)Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;
    .locals 5

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/eltechs/ed/WineRegistryEditor;->stringToInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 120
    iget-object v0, p0, Lcom/eltechs/ed/WineRegistryEditor;->mContents:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 123
    new-instance p1, Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;

    invoke-direct {p1, p0, v0, v0, v0}, Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;-><init>(Lcom/eltechs/ed/WineRegistryEditor;III)V

    return-object p1

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/eltechs/ed/WineRegistryEditor;->mContents:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 126
    iget-object v3, p0, Lcom/eltechs/ed/WineRegistryEditor;->mContents:Ljava/lang/String;

    const/16 v4, 0x5b

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 129
    iget-object v3, p0, Lcom/eltechs/ed/WineRegistryEditor;->mContents:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    :cond_1
    add-int/2addr v3, v0

    .line 135
    iget-object v4, p0, Lcom/eltechs/ed/WineRegistryEditor;->mContents:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 138
    new-instance v0, Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;

    invoke-direct {v0, p0, p1, v1, v3}, Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;-><init>(Lcom/eltechs/ed/WineRegistryEditor;III)V

    return-object v0
.end method

.method private getParamLocation(Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;Ljava/lang/String;)Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;
    .locals 4

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/eltechs/ed/WineRegistryEditor;->stringToInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 147
    iget-object v0, p0, Lcom/eltechs/ed/WineRegistryEditor;->mContents:Ljava/lang/String;

    iget v1, p1, Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;->mContentsBegin:I

    iget v2, p1, Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;->mEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 151
    new-instance p1, Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;

    invoke-direct {p1, p0, v2, v2, v2}, Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;-><init>(Lcom/eltechs/ed/WineRegistryEditor;III)V

    return-object p1

    .line 153
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v1

    const/16 v3, 0xa

    .line 154
    invoke-virtual {v0, v3, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 157
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 159
    :cond_1
    new-instance v0, Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;

    iget v2, p1, Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;->mContentsBegin:I

    add-int/2addr v2, v1

    iget v1, p1, Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;->mContentsBegin:I

    add-int/2addr v1, p2

    iget p1, p1, Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;->mContentsBegin:I

    add-int/2addr p1, v3

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;-><init>(Lcom/eltechs/ed/WineRegistryEditor;III)V

    return-object v0
.end method

.method private insertString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private replaceString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private stringFromInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\\\\"

    const-string v1, "\\"

    .line 67
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private stringToInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\\"

    const-string v1, "\\\\"

    .line 59
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getDwordParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .line 242
    invoke-direct {p0, p1}, Lcom/eltechs/ed/WineRegistryEditor;->getKeyLocation(Ljava/lang/String;)Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;

    move-result-object p1

    .line 243
    iget v0, p1, Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;->mBegin:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 247
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/eltechs/ed/WineRegistryEditor;->getParamLocation(Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;Ljava/lang/String;)Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;

    move-result-object p1

    .line 248
    iget p2, p1, Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;->mBegin:I

    if-ne p2, v2, :cond_1

    return-object v1

    .line 253
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/eltechs/ed/WineRegistryEditor;->mContents:Ljava/lang/String;

    iget v1, p1, Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;->mValBegin:I

    const-string v2, "dword:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget p1, p1, Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;->mEnd:I

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getStringParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 197
    invoke-direct {p0, p1}, Lcom/eltechs/ed/WineRegistryEditor;->getKeyLocation(Ljava/lang/String;)Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;

    move-result-object p1

    .line 198
    iget v0, p1, Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;->mBegin:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 202
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/eltechs/ed/WineRegistryEditor;->getParamLocation(Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;Ljava/lang/String;)Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;

    move-result-object p1

    .line 203
    iget p2, p1, Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;->mBegin:I

    if-ne p2, v2, :cond_1

    return-object v1

    .line 208
    :cond_1
    iget-object p2, p0, Lcom/eltechs/ed/WineRegistryEditor;->mContents:Ljava/lang/String;

    iget v0, p1, Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;->mValBegin:I

    add-int/lit8 v0, v0, 0x1

    iget p1, p1, Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;->mEnd:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/eltechs/ed/WineRegistryEditor;->stringFromInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isParamExists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 179
    invoke-direct {p0, p1}, Lcom/eltechs/ed/WineRegistryEditor;->getKeyLocation(Ljava/lang/String;)Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;

    move-result-object p1

    .line 180
    iget v0, p1, Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;->mBegin:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 184
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/eltechs/ed/WineRegistryEditor;->getParamLocation(Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;Ljava/lang/String;)Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;

    move-result-object p1

    .line 185
    iget p1, p1, Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;->mBegin:I

    if-ne p1, v2, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public read()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/eltechs/ed/WineRegistryEditor;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 92
    iget-object v1, p0, Lcom/eltechs/ed/WineRegistryEditor;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v1, v1, [B

    .line 93
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 94
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 95
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/eltechs/ed/WineRegistryEditor;->mContents:Ljava/lang/String;

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/eltechs/ed/WineRegistryEditor;->mChanged:Z

    return-void
.end method

.method public setDwordParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 5

    .line 261
    invoke-direct {p0, p1}, Lcom/eltechs/ed/WineRegistryEditor;->getKeyLocation(Ljava/lang/String;)Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;

    move-result-object v0

    .line 262
    iget v1, v0, Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;->mBegin:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 264
    invoke-direct {p0, p1}, Lcom/eltechs/ed/WineRegistryEditor;->createKey(Ljava/lang/String;)Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;

    move-result-object v0

    .line 267
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/eltechs/ed/WineRegistryEditor;->getParamLocation(Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;Ljava/lang/String;)Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;

    move-result-object p1

    .line 268
    iget v1, p1, Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;->mBegin:I

    if-ne v1, v2, :cond_1

    .line 270
    iget p1, v0, Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;->mEnd:I

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/eltechs/ed/WineRegistryEditor;->stringToInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 272
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "dword:00000000"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 274
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p1

    .line 275
    iget-object v3, p0, Lcom/eltechs/ed/WineRegistryEditor;->mContents:Ljava/lang/String;

    iget v0, v0, Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;->mEnd:I

    invoke-direct {p0, v3, v0, p2}, Lcom/eltechs/ed/WineRegistryEditor;->insertString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/eltechs/ed/WineRegistryEditor;->mContents:Ljava/lang/String;

    .line 276
    new-instance p2, Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;

    invoke-direct {p2, p0, p1, v1, v2}, Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;-><init>(Lcom/eltechs/ed/WineRegistryEditor;III)V

    move-object p1, p2

    .line 279
    :cond_1
    iget-object p2, p0, Lcom/eltechs/ed/WineRegistryEditor;->mContents:Ljava/lang/String;

    iget v0, p1, Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;->mValBegin:I

    const-string v1, "dword:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget p1, p1, Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;->mEnd:I

    const-string v1, "%08x"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, v0, p1, p3}, Lcom/eltechs/ed/WineRegistryEditor;->replaceString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/ed/WineRegistryEditor;->mContents:Ljava/lang/String;

    .line 280
    iput-boolean v2, p0, Lcom/eltechs/ed/WineRegistryEditor;->mChanged:Z

    return-void
.end method

.method public setStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 216
    invoke-direct {p0, p1}, Lcom/eltechs/ed/WineRegistryEditor;->getKeyLocation(Ljava/lang/String;)Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;

    move-result-object v0

    .line 217
    iget v1, v0, Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;->mBegin:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 219
    invoke-direct {p0, p1}, Lcom/eltechs/ed/WineRegistryEditor;->createKey(Ljava/lang/String;)Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;

    move-result-object v0

    .line 222
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/eltechs/ed/WineRegistryEditor;->getParamLocation(Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;Ljava/lang/String;)Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;

    move-result-object p1

    .line 223
    iget v1, p1, Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;->mBegin:I

    if-ne v1, v2, :cond_1

    .line 225
    iget p1, v0, Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;->mEnd:I

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/eltechs/ed/WineRegistryEditor;->stringToInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"=\"\""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 227
    iget v1, v0, Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;->mEnd:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    add-int/lit8 v2, v1, 0x2

    .line 229
    iget-object v3, p0, Lcom/eltechs/ed/WineRegistryEditor;->mContents:Ljava/lang/String;

    iget v0, v0, Lcom/eltechs/ed/WineRegistryEditor$KeyLocation;->mEnd:I

    invoke-direct {p0, v3, v0, p2}, Lcom/eltechs/ed/WineRegistryEditor;->insertString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/eltechs/ed/WineRegistryEditor;->mContents:Ljava/lang/String;

    .line 230
    new-instance p2, Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;

    invoke-direct {p2, p0, p1, v1, v2}, Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;-><init>(Lcom/eltechs/ed/WineRegistryEditor;III)V

    move-object p1, p2

    .line 233
    :cond_1
    iget-object p2, p0, Lcom/eltechs/ed/WineRegistryEditor;->mContents:Ljava/lang/String;

    iget v0, p1, Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;->mValBegin:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget p1, p1, Lcom/eltechs/ed/WineRegistryEditor$ParamLocation;->mEnd:I

    sub-int/2addr p1, v1

    invoke-direct {p0, p3}, Lcom/eltechs/ed/WineRegistryEditor;->stringToInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, v0, p1, p3}, Lcom/eltechs/ed/WineRegistryEditor;->replaceString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/ed/WineRegistryEditor;->mContents:Ljava/lang/String;

    .line 234
    iput-boolean v1, p0, Lcom/eltechs/ed/WineRegistryEditor;->mChanged:Z

    return-void
.end method

.method public write()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-boolean v0, p0, Lcom/eltechs/ed/WineRegistryEditor;->mChanged:Z

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/eltechs/ed/WineRegistryEditor;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 109
    iget-object v1, p0, Lcom/eltechs/ed/WineRegistryEditor;->mContents:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 110
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/eltechs/ed/WineRegistryEditor;->mChanged:Z

    return-void
.end method
