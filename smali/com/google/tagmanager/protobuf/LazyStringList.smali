.class public interface abstract Lcom/google/tagmanager/protobuf/LazyStringList;
.super Ljava/lang/Object;
.source "LazyStringList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract add(Lcom/google/tagmanager/protobuf/ByteString;)V
.end method

.method public abstract add([B)V
.end method

.method public abstract addAllByteArray(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[B>;)Z"
        }
    .end annotation
.end method

.method public abstract addAllByteString(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/tagmanager/protobuf/ByteString;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract asByteArrayList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract getByteArray(I)[B
.end method

.method public abstract getByteString(I)Lcom/google/tagmanager/protobuf/ByteString;
.end method

.method public abstract getUnderlyingElements()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract mergeFrom(Lcom/google/tagmanager/protobuf/LazyStringList;)V
.end method

.method public abstract set(ILcom/google/tagmanager/protobuf/ByteString;)V
.end method

.method public abstract set(I[B)V
.end method
