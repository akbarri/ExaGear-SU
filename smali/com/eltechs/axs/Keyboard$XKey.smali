.class Lcom/eltechs/axs/Keyboard$XKey;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XKey"
.end annotation


# instance fields
.field public keycode:Lcom/eltechs/axs/KeyCodesX;

.field public keysym:I

.field final synthetic this$0:Lcom/eltechs/axs/Keyboard;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/eltechs/axs/Keyboard$XKey;->this$0:Lcom/eltechs/axs/Keyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/eltechs/axs/Keyboard$XKey;->keycode:Lcom/eltechs/axs/KeyCodesX;

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/eltechs/axs/Keyboard$XKey;->keysym:I

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/Keyboard;Lcom/eltechs/axs/KeyCodesX;I)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/eltechs/axs/Keyboard$XKey;->this$0:Lcom/eltechs/axs/Keyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/eltechs/axs/Keyboard$XKey;->keycode:Lcom/eltechs/axs/KeyCodesX;

    .line 33
    iput p3, p0, Lcom/eltechs/axs/Keyboard$XKey;->keysym:I

    return-void
.end method
