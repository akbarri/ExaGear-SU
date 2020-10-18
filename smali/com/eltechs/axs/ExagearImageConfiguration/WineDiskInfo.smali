.class public Lcom/eltechs/axs/ExagearImageConfiguration/WineDiskInfo;
.super Ljava/lang/Object;
.source "WineDiskInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final diskLetter:Ljava/lang/String;

.field public final diskTargetPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/eltechs/axs/ExagearImageConfiguration/WineDiskInfo;->diskLetter:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/eltechs/axs/ExagearImageConfiguration/WineDiskInfo;->diskTargetPath:Ljava/lang/String;

    return-void
.end method
