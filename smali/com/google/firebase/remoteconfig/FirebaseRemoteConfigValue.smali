.class public interface abstract Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;
.super Ljava/lang/Object;


# virtual methods
.method public abstract asBoolean()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract asByteArray()[B
.end method

.method public abstract asDouble()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract asLong()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract asString()Ljava/lang/String;
.end method

.method public abstract getSource()I
.end method
