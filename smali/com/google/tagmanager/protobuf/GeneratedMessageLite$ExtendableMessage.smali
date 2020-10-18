.class public abstract Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;
.super Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "TMessageType;>;>",
        "Lcom/google/tagmanager/protobuf/GeneratedMessageLite;",
        "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder<",
        "TMessageType;>;"
    }
.end annotation


# instance fields
.field private final extensions:Lcom/google/tagmanager/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/FieldSet<",
            "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 184
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>()V

    .line 185
    invoke-static {}, Lcom/google/tagmanager/protobuf/FieldSet;->newFieldSet()Lcom/google/tagmanager/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/tagmanager/protobuf/FieldSet;

    return-void
.end method

.method protected constructor <init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableBuilder<",
            "TMessageType;*>;)V"
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;-><init>()V

    .line 189
    invoke-static {p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableBuilder;->access$000(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableBuilder;)Lcom/google/tagmanager/protobuf/FieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/tagmanager/protobuf/FieldSet;

    return-void
.end method

.method static synthetic access$200(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;)Lcom/google/tagmanager/protobuf/FieldSet;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/tagmanager/protobuf/FieldSet;

    return-object p0
.end method

.method private verifyExtensionContainingType(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;*>;)V"
        }
    .end annotation

    .line 194
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->getContainingTypeDefaultInstance()Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;->getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 197
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method


# virtual methods
.method protected extensionsAreInitialized()Z
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/tagmanager/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/FieldSet;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected extensionsSerializedSize()I
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/tagmanager/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/FieldSet;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method protected extensionsSerializedSizeAsMessageSet()I
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/tagmanager/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/FieldSet;->getMessageSetSerializedSize()I

    move-result v0

    return v0
.end method

.method public final getExtension(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    .line 224
    invoke-direct {p0, p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 225
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/tagmanager/protobuf/FieldSet;

    iget-object v1, p1, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/protobuf/FieldSet;->getField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 227
    iget-object p1, p1, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->defaultValue:Ljava/lang/Object;

    return-object p1

    .line 229
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->fromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtension(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation

    .line 239
    invoke-direct {p0, p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 240
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/tagmanager/protobuf/FieldSet;

    iget-object v1, p1, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, v1, p2}, Lcom/google/tagmanager/protobuf/FieldSet;->getRepeatedField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->singularFromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtensionCount(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;)I"
        }
    .end annotation

    .line 215
    invoke-direct {p0, p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 216
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/tagmanager/protobuf/FieldSet;

    iget-object p1, p1, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result p1

    return p1
.end method

.method public final hasExtension(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    .line 207
    invoke-direct {p0, p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 208
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/tagmanager/protobuf/FieldSet;

    iget-object p1, p1, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/FieldSet;->hasField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1
.end method

.method protected makeExtensionsImmutable()V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/tagmanager/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/FieldSet;->makeImmutable()V

    return-void
.end method

.method public mutableCopy()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 2

    .line 271
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;->mutableCopy()Lcom/google/tagmanager/protobuf/MutableMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage;

    .line 277
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/tagmanager/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/FieldSet;->cloneWithAllFieldsToMutable()Lcom/google/tagmanager/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage;->internalSetExtensionSet(Lcom/google/tagmanager/protobuf/FieldSet;)V

    return-object v0
.end method

.method protected newExtensionWriter()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "TMessageType;>.ExtensionWriter;"
        }
    .end annotation

    .line 333
    new-instance v0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;ZLcom/google/tagmanager/protobuf/GeneratedMessageLite$1;)V

    return-object v0
.end method

.method protected newMessageSetExtensionWriter()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "TMessageType;>.ExtensionWriter;"
        }
    .end annotation

    .line 336
    new-instance v0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;ZLcom/google/tagmanager/protobuf/GeneratedMessageLite$1;)V

    return-object v0
.end method

.method protected parseUnknownField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/tagmanager/protobuf/FieldSet;

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;->getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;->access$100(Lcom/google/tagmanager/protobuf/FieldSet;Lcom/google/tagmanager/protobuf/MessageLite;Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;I)Z

    move-result p1

    return p1
.end method
