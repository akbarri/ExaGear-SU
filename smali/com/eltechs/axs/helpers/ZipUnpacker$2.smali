.class final Lcom/eltechs/axs/helpers/ZipUnpacker$2;
.super Ljava/lang/Object;
.source "ZipUnpacker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/helpers/ZipUnpacker;->unpackZip(Ljava/io/File;Ljava/io/File;Lcom/eltechs/axs/helpers/ZipUnpacker$Callbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callbacks:Lcom/eltechs/axs/helpers/ZipUnpacker$Callbacks;

.field final synthetic val$val:J


# direct methods
.method constructor <init>(Lcom/eltechs/axs/helpers/ZipUnpacker$Callbacks;J)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/eltechs/axs/helpers/ZipUnpacker$2;->val$callbacks:Lcom/eltechs/axs/helpers/ZipUnpacker$Callbacks;

    iput-wide p2, p0, Lcom/eltechs/axs/helpers/ZipUnpacker$2;->val$val:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/eltechs/axs/helpers/ZipUnpacker$2;->val$callbacks:Lcom/eltechs/axs/helpers/ZipUnpacker$Callbacks;

    iget-wide v1, p0, Lcom/eltechs/axs/helpers/ZipUnpacker$2;->val$val:J

    invoke-interface {v0, v1, v2}, Lcom/eltechs/axs/helpers/ZipUnpacker$Callbacks;->reportProgress(J)V

    return-void
.end method
