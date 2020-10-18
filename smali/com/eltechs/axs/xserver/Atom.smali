.class public final Lcom/eltechs/axs/xserver/Atom;
.super Ljava/lang/Object;
.source "Atom.java"


# instance fields
.field private final id:I

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/eltechs/axs/xserver/Atom;->id:I

    .line 16
    iput-object p2, p0, Lcom/eltechs/axs/xserver/Atom;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 32
    instance-of v0, p1, Lcom/eltechs/axs/xserver/Atom;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 37
    :cond_0
    check-cast p1, Lcom/eltechs/axs/xserver/Atom;

    .line 38
    iget v0, p0, Lcom/eltechs/axs/xserver/Atom;->id:I

    iget p1, p1, Lcom/eltechs/axs/xserver/Atom;->id:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getId()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/eltechs/axs/xserver/Atom;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/eltechs/axs/xserver/Atom;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/eltechs/axs/xserver/Atom;->id:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "[%d: %s]"

    const/4 v1, 0x2

    .line 50
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/eltechs/axs/xserver/Atom;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/eltechs/axs/xserver/Atom;->name:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
