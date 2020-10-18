.class interface abstract Lcom/google/tagmanager/NetworkClient;
.super Ljava/lang/Object;
.source "NetworkClient.java"


# static fields
.field public static final DEFAULT_CONNECTION_TIMEOUT_MILLIS:I = 0x4e20

.field public static final DEFAULT_SOCKET_TIMEOUT_MILLIS:I = 0x4e20


# virtual methods
.method public abstract close()V
.end method

.method public abstract getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendPostRequest(Ljava/lang/String;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
