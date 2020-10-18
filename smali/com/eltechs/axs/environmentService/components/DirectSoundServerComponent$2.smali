.class Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent$2;
.super Ljava/lang/Object;
.source "DirectSoundServerComponent.java"

# interfaces
.implements Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler$ClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;->resumePlayback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent$2;->this$0:Lcom/eltechs/axs/environmentService/components/DirectSoundServerComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;)V
    .locals 0

    .line 101
    invoke-virtual {p1}, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->resumePlayback()V

    return-void
.end method
