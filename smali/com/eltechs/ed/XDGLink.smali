.class public Lcom/eltechs/ed/XDGLink;
.super Ljava/lang/Object;
.source "XDGLink.java"


# instance fields
.field public final exec:Ljava/lang/String;

.field public final guestCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

.field public final icon:Ljava/lang/String;

.field public final linkFile:Ljava/io/File;

.field public final name:Ljava/lang/String;

.field public final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/eltechs/ed/guestContainers/GuestContainer;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/eltechs/ed/XDGLink;->guestCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    .line 40
    iput-object p2, p0, Lcom/eltechs/ed/XDGLink;->linkFile:Ljava/io/File;

    .line 46
    invoke-static {p2}, Lcom/eltechs/axs/helpers/FileHelpers;->readAsLines(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move-object v0, p2

    move-object v1, v0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Name="

    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p2, "Name="

    .line 50
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    const-string v4, "Exec="

    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "Exec="

    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v4, "Path="

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v1, "Path="

    .line 60
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    const-string v4, "Icon="

    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v2, "Icon="

    .line 65
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 68
    :cond_4
    iput-object p2, p0, Lcom/eltechs/ed/XDGLink;->name:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/eltechs/ed/XDGLink;->exec:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/eltechs/ed/XDGLink;->path:Ljava/lang/String;

    .line 71
    iput-object v2, p0, Lcom/eltechs/ed/XDGLink;->icon:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/ed/guestContainers/GuestContainer;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/eltechs/ed/XDGLink;-><init>(Lcom/eltechs/ed/guestContainers/GuestContainer;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/eltechs/ed/XDGLink;->name:Ljava/lang/String;

    return-object v0
.end method
