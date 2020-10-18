.class public Lcom/eltechs/axs/xserver/events/LeaveNotify;
.super Lcom/eltechs/axs/xserver/events/PointerWindowEvent;
.source "LeaveNotify.java"


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;ILcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;SSSSLcom/eltechs/axs/xserver/impl/masks/Mask;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;",
            "Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;",
            "I",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/xserver/Window;",
            "SSSS",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/KeyButNames;",
            ">;Z)V"
        }
    .end annotation

    const/16 v1, 0x8

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    .line 29
    invoke-direct/range {v0 .. v13}, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;-><init>(ILcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;ILcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;SSSSLcom/eltechs/axs/xserver/impl/masks/Mask;Z)V

    return-void
.end method
