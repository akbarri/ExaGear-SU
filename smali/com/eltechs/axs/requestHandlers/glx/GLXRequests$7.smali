.class Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$7;
.super Ljava/lang/Object;
.source "GLXRequests.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;->GetFBConfigs(Lcom/eltechs/axs/xconnectors/XResponse;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$7;->this$0:Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 18

    .line 173
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    move-object/from16 v1, p0

    .line 174
    iget-object v2, v1, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$7;->this$0:Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;

    invoke-static {v2}, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;->access$100(Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;)Lcom/eltechs/axs/xserver/XServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/XServer;->getDrawablesManager()Lcom/eltechs/axs/xserver/DrawablesManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/eltechs/axs/xserver/DrawablesManager;->getSupportedVisuals()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    .line 176
    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v5

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getBitsPerRgbValue()I

    move-result v6

    const/4 v7, 0x0

    if-le v5, v6, :cond_0

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v5

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getBitsPerRgbValue()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_1

    :cond_0
    move v5, v7

    :goto_1
    const/16 v6, 0x58

    .line 177
    new-array v6, v6, [I

    const v8, 0x800b

    aput v8, v6, v7

    .line 178
    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getId()I

    move-result v8

    const/4 v9, 0x1

    aput v8, v6, v9

    const v8, 0x8013

    const/4 v10, 0x2

    aput v8, v6, v10

    const/4 v8, 0x3

    const/4 v11, -0x1

    aput v11, v6, v8

    const v12, 0x8012

    aput v12, v6, v4

    const/4 v12, 0x5

    aput v11, v6, v12

    const/4 v13, 0x6

    aput v4, v6, v13

    const/4 v4, 0x7

    aput v9, v6, v4

    const v14, 0x8011

    const/16 v15, 0x8

    aput v14, v6, v15

    const/16 v14, 0x9

    aput v9, v6, v14

    const/16 v16, 0xa

    aput v12, v6, v16

    const/16 v12, 0xb

    aput v9, v6, v12

    const/16 v9, 0xc

    aput v13, v6, v9

    const/16 v13, 0xd

    aput v7, v6, v13

    const/16 v17, 0xe

    aput v10, v6, v17

    const/16 v10, 0xf

    .line 185
    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getBitsPerRgbValue()I

    move-result v17

    aput v17, v6, v10

    const/16 v10, 0x10

    aput v8, v6, v10

    const/16 v8, 0x11

    aput v7, v6, v8

    const/16 v8, 0x12

    aput v4, v6, v8

    const/16 v8, 0x13

    aput v7, v6, v8

    const/16 v8, 0x14

    aput v15, v6, v8

    const/16 v8, 0x15

    .line 188
    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getRedMask()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->bitCount(I)I

    move-result v10

    aput v10, v6, v8

    const/16 v8, 0x16

    aput v14, v6, v8

    const/16 v8, 0x17

    .line 189
    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getGreenMask()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->bitCount(I)I

    move-result v10

    aput v10, v6, v8

    const/16 v8, 0x18

    aput v16, v6, v8

    const/16 v8, 0x19

    .line 190
    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getBlueMask()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->bitCount(I)I

    move-result v10

    aput v10, v6, v8

    const/16 v8, 0x1a

    aput v12, v6, v8

    const/16 v8, 0x1b

    aput v5, v6, v8

    const/16 v5, 0x1c

    const/16 v8, 0xe

    aput v8, v6, v5

    const/16 v5, 0x1d

    aput v7, v6, v5

    const/16 v5, 0x1e

    const/16 v8, 0xf

    aput v8, v6, v5

    const/16 v5, 0x1f

    aput v7, v6, v5

    const/16 v5, 0x20

    const/16 v8, 0x10

    aput v8, v6, v5

    const/16 v5, 0x21

    aput v7, v6, v5

    const/16 v5, 0x22

    const/16 v8, 0x11

    aput v8, v6, v5

    const/16 v5, 0x23

    aput v7, v6, v5

    const/16 v5, 0x24

    aput v9, v6, v5

    const/16 v5, 0x25

    .line 196
    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v3

    aput v3, v6, v5

    const/16 v3, 0x26

    aput v13, v6, v3

    const/16 v3, 0x27

    aput v7, v6, v3

    const/16 v3, 0x28

    const/16 v5, 0x22

    aput v5, v6, v3

    const/16 v3, 0x29

    const v5, 0x8002

    aput v5, v6, v3

    const/16 v3, 0x2a

    const/16 v5, 0x20

    aput v5, v6, v3

    const/16 v3, 0x2b

    const v5, 0x8000

    aput v5, v6, v3

    const/16 v3, 0x2c

    const/16 v5, 0x23

    aput v5, v6, v3

    const/16 v3, 0x2d

    const v5, 0x8000

    aput v5, v6, v3

    const/16 v3, 0x2e

    const/16 v5, 0x25

    aput v5, v6, v3

    const/16 v3, 0x2f

    aput v11, v6, v3

    const/16 v3, 0x30

    const/16 v5, 0x26

    aput v5, v6, v3

    const/16 v3, 0x31

    aput v11, v6, v3

    const/16 v3, 0x32

    const/16 v5, 0x27

    aput v5, v6, v3

    const/16 v3, 0x33

    aput v11, v6, v3

    const/16 v3, 0x34

    const/16 v5, 0x28

    aput v5, v6, v3

    const/16 v3, 0x35

    aput v11, v6, v3

    const/16 v3, 0x36

    const/16 v5, 0x24

    aput v5, v6, v3

    const/16 v3, 0x37

    aput v11, v6, v3

    const/16 v3, 0x38

    const v5, 0x8060

    aput v5, v6, v3

    const/16 v3, 0x39

    aput v7, v6, v3

    const/16 v3, 0x3a

    const v5, 0x186a1

    aput v5, v6, v3

    const/16 v3, 0x3b

    aput v7, v6, v3

    const/16 v3, 0x3c

    const v5, 0x186a0

    aput v5, v6, v3

    const/16 v3, 0x3d

    aput v7, v6, v3

    const/16 v3, 0x3e

    const v5, 0x8028

    aput v5, v6, v3

    const/16 v3, 0x3f

    aput v7, v6, v3

    const/16 v3, 0x40

    const v5, 0x8010

    aput v5, v6, v3

    const/16 v3, 0x41

    aput v4, v6, v3

    const/16 v3, 0x42

    const/16 v4, 0x20d0

    aput v4, v6, v3

    const/16 v3, 0x43

    aput v11, v6, v3

    const/16 v3, 0x44

    const/16 v4, 0x20d1

    aput v4, v6, v3

    const/16 v3, 0x45

    aput v11, v6, v3

    const/16 v3, 0x46

    const/16 v4, 0x20d2

    aput v4, v6, v3

    const/16 v3, 0x47

    aput v11, v6, v3

    const/16 v3, 0x48

    const/16 v4, 0x20d3

    aput v4, v6, v3

    const/16 v3, 0x49

    aput v11, v6, v3

    const/16 v3, 0x4a

    const/16 v4, 0x20d4

    aput v4, v6, v3

    const/16 v3, 0x4b

    aput v11, v6, v3

    const/16 v3, 0x4c

    const v4, 0x8016

    aput v4, v6, v3

    const/16 v3, 0x4d

    aput v7, v6, v3

    const/16 v3, 0x4e

    const v4, 0x8017

    aput v4, v6, v3

    const/16 v3, 0x4f

    aput v7, v6, v3

    const/16 v3, 0x50

    const v4, 0x8018

    aput v4, v6, v3

    const/16 v3, 0x51

    aput v7, v6, v3

    const/16 v3, 0x52

    const v4, 0x8019

    aput v4, v6, v3

    const/16 v3, 0x53

    aput v7, v6, v3

    const/16 v3, 0x54

    const v4, 0x801a

    aput v4, v6, v3

    const/16 v3, 0x55

    aput v7, v6, v3

    const/16 v3, 0x56

    aput v7, v6, v3

    const/16 v3, 0x57

    aput v7, v6, v3

    .line 226
    invoke-virtual {v0, v6}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    goto/16 :goto_0

    .line 228
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->position()I

    move-result v0

    mul-int/2addr v0, v4

    add-int/2addr v2, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
