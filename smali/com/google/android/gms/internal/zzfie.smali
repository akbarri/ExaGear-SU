.class public Lcom/google/android/gms/internal/zzfie;
.super Ljava/io/IOException;


# instance fields
.field private zzpqo:Lcom/google/android/gms/internal/zzfjc;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfie;->zzpqo:Lcom/google/android/gms/internal/zzfjc;

    return-void
.end method

.method static zzdae()Lcom/google/android/gms/internal/zzfie;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzfie;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfie;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzdaf()Lcom/google/android/gms/internal/zzfie;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzfie;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfie;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzdag()Lcom/google/android/gms/internal/zzfie;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzfie;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfie;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzdah()Lcom/google/android/gms/internal/zzfie;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzfie;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfie;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzdai()Lcom/google/android/gms/internal/zzfie;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzfie;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfie;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzdaj()Lcom/google/android/gms/internal/zzfif;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzfif;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfif;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzdak()Lcom/google/android/gms/internal/zzfie;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzfie;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfie;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzdal()Lcom/google/android/gms/internal/zzfie;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzfie;

    const-string v1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfie;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzdam()Lcom/google/android/gms/internal/zzfie;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzfie;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfie;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final zzi(Lcom/google/android/gms/internal/zzfjc;)Lcom/google/android/gms/internal/zzfie;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfie;->zzpqo:Lcom/google/android/gms/internal/zzfjc;

    return-object p0
.end method
