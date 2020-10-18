.class final Lcom/eltechs/ed/AppRunGuide$1;
.super Ljava/util/HashMap;
.source "AppRunGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/ed/AppRunGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/eltechs/ed/AppRunGuide;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    .line 24
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 26
    sget-object v0, Lcom/eltechs/ed/AppRunGuide;->ID_DIVINE_DIVINITY:Ljava/lang/String;

    new-instance v1, Lcom/eltechs/ed/AppRunGuide;

    const/4 v2, 0x0

    const v3, 0x7f0d004b

    const v4, 0x7f0d004a

    invoke-direct {v1, v3, v4, v2}, Lcom/eltechs/ed/AppRunGuide;-><init>(IILcom/eltechs/ed/AppRunGuide$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/eltechs/ed/AppRunGuide$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/eltechs/ed/AppRunGuide;->ID_FALLOUT:Ljava/lang/String;

    new-instance v1, Lcom/eltechs/ed/AppRunGuide;

    const v3, 0x7f0d004f

    const v4, 0x7f0d004e

    invoke-direct {v1, v3, v4, v2}, Lcom/eltechs/ed/AppRunGuide;-><init>(IILcom/eltechs/ed/AppRunGuide$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/eltechs/ed/AppRunGuide$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/eltechs/ed/AppRunGuide;->ID_FALLOUT2:Ljava/lang/String;

    new-instance v1, Lcom/eltechs/ed/AppRunGuide;

    const v3, 0x7f0d004d

    const v4, 0x7f0d004c

    invoke-direct {v1, v3, v4, v2}, Lcom/eltechs/ed/AppRunGuide;-><init>(IILcom/eltechs/ed/AppRunGuide$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/eltechs/ed/AppRunGuide$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/eltechs/ed/AppRunGuide;->ID_CIV3:Ljava/lang/String;

    new-instance v1, Lcom/eltechs/ed/AppRunGuide;

    const v3, 0x7f0d0049

    const v4, 0x7f0d0048

    invoke-direct {v1, v3, v4, v2}, Lcom/eltechs/ed/AppRunGuide;-><init>(IILcom/eltechs/ed/AppRunGuide$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/eltechs/ed/AppRunGuide$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
