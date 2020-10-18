.class public interface abstract Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;
.super Ljava/lang/Object;
.source "MouseMoveAdapter.java"


# static fields
.field public static final dummy:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter$1;

    invoke-direct {v0}, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;->dummy:Lcom/eltechs/axs/GuestAppActionAdapters/MouseMoveAdapter;

    return-void
.end method


# virtual methods
.method public abstract moveTo(FF)V
.end method

.method public abstract prepareMoving(FF)V
.end method
