.class final Lcom/eltechs/axs/helpers/SafeFileHelpers$1;
.super Ljava/lang/Object;
.source "SafeFileHelpers.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/SafeFileHelpers$FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/helpers/SafeFileHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
