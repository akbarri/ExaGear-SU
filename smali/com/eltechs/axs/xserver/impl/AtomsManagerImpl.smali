.class public final Lcom/eltechs/axs/xserver/impl/AtomsManagerImpl;
.super Ljava/lang/Object;
.source "AtomsManagerImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/AtomsManager;


# instance fields
.field private final atoms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/eltechs/axs/xserver/Atom;",
            ">;"
        }
    .end annotation
.end field

.field private final atomsIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/AtomsManagerImpl;->atoms:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/AtomsManagerImpl;->atomsIds:Ljava/util/Map;

    .line 25
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/AtomsManagerImpl;->atoms:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getAtom(I)Lcom/eltechs/axs/xserver/Atom;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/AtomsManagerImpl;->atoms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/AtomsManagerImpl;->atoms:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/xserver/Atom;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getAtom(Ljava/lang/String;)Lcom/eltechs/axs/xserver/Atom;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/xserver/impl/AtomsManagerImpl;->getAtomId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/xserver/impl/AtomsManagerImpl;->getAtom(I)Lcom/eltechs/axs/xserver/Atom;

    move-result-object p1

    return-object p1
.end method

.method public getAtomId(Ljava/lang/String;)I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/AtomsManagerImpl;->atomsIds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public internAtom(Ljava/lang/String;)I
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/AtomsManagerImpl;->atomsIds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/AtomsManagerImpl;->atoms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/AtomsManagerImpl;->atoms:Ljava/util/ArrayList;

    new-instance v2, Lcom/eltechs/axs/xserver/Atom;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3, p1}, Lcom/eltechs/axs/xserver/Atom;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/AtomsManagerImpl;->atomsIds:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public isAtomRegistered(Ljava/lang/String;)Z
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/xserver/impl/AtomsManagerImpl;->getAtomId(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
