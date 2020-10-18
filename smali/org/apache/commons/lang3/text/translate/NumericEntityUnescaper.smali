.class public Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;
.super Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
.source "NumericEntityUnescaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;
    }
.end annotation


# instance fields
.field private final options:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;-><init>()V

    .line 57
    array-length v0, p1

    if-lez v0, :cond_0

    .line 58
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;->options:Ljava/util/EnumSet;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 60
    new-array p1, p1, [Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;->semiColonRequired:Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    aput-object v1, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;->options:Ljava/util/EnumSet;

    :goto_0
    return-void
.end method


# virtual methods
.method public isSet(Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)Z
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;->options:Ljava/util/EnumSet;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;->options:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 81
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x26

    if-ne v1, v3, :cond_c

    add-int/lit8 v1, v0, -0x2

    if-ge p2, v1, :cond_c

    add-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x23

    if-ne v1, v3, :cond_c

    const/4 v1, 0x2

    add-int/2addr p2, v1

    .line 85
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x78

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    const/16 v4, 0x58

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ne p2, v0, :cond_2

    return v2

    :cond_2
    move v3, v5

    :goto_1
    move v4, p2

    :goto_2
    if-ge v4, v0, :cond_6

    .line 98
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-lt v6, v7, :cond_3

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x39

    if-le v6, v7, :cond_5

    .line 99
    :cond_3
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x61

    if-lt v6, v7, :cond_4

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x66

    if-le v6, v7, :cond_5

    .line 100
    :cond_4
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x41

    if-lt v6, v7, :cond_6

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x46

    if-gt v6, v7, :cond_6

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    if-eq v4, v0, :cond_7

    .line 105
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v6, 0x3b

    if-ne v0, v6, :cond_7

    move v0, v5

    goto :goto_3

    :cond_7
    move v0, v2

    :goto_3
    if-nez v0, :cond_9

    .line 108
    sget-object v6, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;->semiColonRequired:Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-virtual {p0, v6}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;->isSet(Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)Z

    move-result v6

    if-eqz v6, :cond_8

    return v2

    .line 111
    :cond_8
    sget-object v6, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;->errorIfNoSemiColon:Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-virtual {p0, v6}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;->isSet(Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 112
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Semi-colon required at end of numeric entity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    if-eqz v3, :cond_a

    .line 119
    :try_start_0
    invoke-interface {p1, p2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v6, 0x10

    invoke-static {p1, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_4

    .line 121
    :cond_a
    invoke-interface {p1, p2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v6, 0xa

    invoke-static {p1, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    const v6, 0xffff

    if-le p1, v6, :cond_b

    .line 128
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    .line 129
    aget-char v2, p1, v2

    invoke-virtual {p3, v2}, Ljava/io/Writer;->write(I)V

    .line 130
    aget-char p1, p1, v5

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(I)V

    goto :goto_5

    .line 132
    :cond_b
    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(I)V

    :goto_5
    add-int/2addr v1, v4

    sub-int/2addr v1, p2

    add-int/2addr v1, v3

    add-int/2addr v1, v0

    return v1

    :catch_0
    return v2

    :cond_c
    return v2
.end method
