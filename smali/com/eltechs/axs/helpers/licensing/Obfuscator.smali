.class public interface abstract Lcom/eltechs/axs/helpers/licensing/Obfuscator;
.super Ljava/lang/Object;
.source "Obfuscator.java"


# virtual methods
.method public abstract obfuscate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract unobfuscate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/helpers/licensing/ValidationException;
        }
    .end annotation
.end method
