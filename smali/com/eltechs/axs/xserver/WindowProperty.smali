.class public interface abstract Lcom/eltechs/axs/xserver/WindowProperty;
.super Ljava/lang/Object;
.source "WindowProperty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/xserver/WindowProperty$Format;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ARRAY_OF_BYTES:Lcom/eltechs/axs/xserver/WindowProperty$Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/xserver/WindowProperty$Format<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final ARRAY_OF_INTS:Lcom/eltechs/axs/xserver/WindowProperty$Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/xserver/WindowProperty$Format<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final ARRAY_OF_SHORTS:Lcom/eltechs/axs/xserver/WindowProperty$Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/xserver/WindowProperty$Format<",
            "[S>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/eltechs/axs/xserver/WindowProperty$Format;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/eltechs/axs/xserver/WindowProperty$Format;-><init>(B)V

    sput-object v0, Lcom/eltechs/axs/xserver/WindowProperty;->ARRAY_OF_BYTES:Lcom/eltechs/axs/xserver/WindowProperty$Format;

    .line 13
    new-instance v0, Lcom/eltechs/axs/xserver/WindowProperty$Format;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/eltechs/axs/xserver/WindowProperty$Format;-><init>(B)V

    sput-object v0, Lcom/eltechs/axs/xserver/WindowProperty;->ARRAY_OF_SHORTS:Lcom/eltechs/axs/xserver/WindowProperty$Format;

    .line 14
    new-instance v0, Lcom/eltechs/axs/xserver/WindowProperty$Format;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/eltechs/axs/xserver/WindowProperty$Format;-><init>(B)V

    sput-object v0, Lcom/eltechs/axs/xserver/WindowProperty;->ARRAY_OF_INTS:Lcom/eltechs/axs/xserver/WindowProperty$Format;

    return-void
.end method


# virtual methods
.method public abstract getFormat()Lcom/eltechs/axs/xserver/WindowProperty$Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/eltechs/axs/xserver/WindowProperty$Format<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getSizeInBytes()I
.end method

.method public abstract getType()Lcom/eltechs/axs/xserver/Atom;
.end method

.method public abstract getValues()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
