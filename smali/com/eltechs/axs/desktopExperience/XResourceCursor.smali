.class public Lcom/eltechs/axs/desktopExperience/XResourceCursor;
.super Ljava/lang/Object;
.source "XResourceCursor.java"

# interfaces
.implements Lcom/eltechs/axs/desktopExperience/XResource;


# instance fields
.field private final size:I

.field private final theme:Ljava/lang/String;

.field private final themeCore:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/eltechs/axs/desktopExperience/XResourceCursor;->size:I

    .line 35
    iput-object p2, p0, Lcom/eltechs/axs/desktopExperience/XResourceCursor;->theme:Ljava/lang/String;

    .line 36
    iput-boolean p3, p0, Lcom/eltechs/axs/desktopExperience/XResourceCursor;->themeCore:Z

    return-void
.end method


# virtual methods
.method public getKeyValPairs()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "size"

    .line 43
    iget v2, p0, Lcom/eltechs/axs/desktopExperience/XResourceCursor;->size:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "theme"

    .line 44
    iget-object v2, p0, Lcom/eltechs/axs/desktopExperience/XResourceCursor;->theme:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "theme_core"

    const/4 v2, 0x1

    .line 45
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Xcursor"

    return-object v0
.end method
