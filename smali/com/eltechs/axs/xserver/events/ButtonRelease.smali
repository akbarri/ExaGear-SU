.class public Lcom/eltechs/axs/xserver/events/ButtonRelease;
.super Lcom/eltechs/axs/xserver/events/InputDeviceEvent;
.source "ButtonRelease.java"


# direct methods
.method public constructor <init>(BILcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;SSSSLcom/eltechs/axs/xserver/impl/masks/Mask;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BI",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/xserver/Window;",
            "SSSS",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/KeyButNames;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x5

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    .line 27
    invoke-direct/range {v0 .. v11}, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;-><init>(IBILcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;SSSSLcom/eltechs/axs/xserver/impl/masks/Mask;)V

    return-void
.end method
