.class final Lcom/google/android/gms/internal/zzah;
.super Lcom/google/android/gms/internal/zzai;


# instance fields
.field private final zzbo:Lcom/google/android/gms/internal/zzar;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzar;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzai;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzah;->zzbo:Lcom/google/android/gms/internal/zzar;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzr;Ljava/util/Map;)Lcom/google/android/gms/internal/zzaq;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzr<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/zzaq;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zza;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzah;->zzbo:Lcom/google/android/gms/internal/zzar;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzar;->zzb(Lcom/google/android/gms/internal/zzr;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    new-instance v5, Lcom/google/android/gms/internal/zzl;

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/google/android/gms/internal/zzl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/zzaq;

    invoke-direct {p1, p2, v1}, Lcom/google/android/gms/internal/zzaq;-><init>(ILjava/util/List;)V

    return-object p1

    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v0, v2

    int-to-long v4, v0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    new-instance p1, Ljava/io/IOException;

    const/16 p2, 0x28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Response too large: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzaq;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p2, v1, v2, p1}, Lcom/google/android/gms/internal/zzaq;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-object v0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/net/SocketTimeoutException;

    invoke-virtual {p1}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
