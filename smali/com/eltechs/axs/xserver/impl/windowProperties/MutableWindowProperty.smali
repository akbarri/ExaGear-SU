.class public abstract Lcom/eltechs/axs/xserver/impl/windowProperties/MutableWindowProperty;
.super Ljava/lang/Object;
.source "MutableWindowProperty.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/WindowProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/eltechs/axs/xserver/WindowProperty<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final type:Lcom/eltechs/axs/xserver/Atom;


# direct methods
.method protected constructor <init>(Lcom/eltechs/axs/xserver/Atom;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/MutableWindowProperty;->type:Lcom/eltechs/axs/xserver/Atom;

    return-void
.end method


# virtual methods
.method public abstract appendValues(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public getType()Lcom/eltechs/axs/xserver/Atom;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/windowProperties/MutableWindowProperty;->type:Lcom/eltechs/axs/xserver/Atom;

    return-object v0
.end method

.method public abstract prependValues(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract replaceValues(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
