.class public Lcom/eltechs/axs/proto/output/replies/Str;
.super Ljava/lang/Object;
.source "Str.java"


# annotations
.annotation runtime Lcom/eltechs/axs/proto/output/POD;
    value = {
        "length",
        "str"
    }
.end annotation


# instance fields
.field public final length:B

.field public final str:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/eltechs/axs/proto/output/replies/Str;->length:B

    const-string v0, "latin1"

    .line 23
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/proto/output/replies/Str;->str:[B

    return-void
.end method
