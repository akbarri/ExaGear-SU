.class public interface abstract Lcom/eltechs/axs/helpers/SafeFileHelpers$FileCallback;
.super Ljava/lang/Object;
.source "SafeFileHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/helpers/SafeFileHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileCallback"
.end annotation


# virtual methods
.method public abstract apply(Ljava/io/File;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
