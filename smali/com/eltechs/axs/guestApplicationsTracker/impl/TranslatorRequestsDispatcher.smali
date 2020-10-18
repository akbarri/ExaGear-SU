.class public Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorRequestsDispatcher;
.super Ljava/lang/Object;
.source "TranslatorRequestsDispatcher.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/RequestHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/eltechs/axs/xconnectors/RequestHandler<",
        "Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAGIC:I = 0x4b524f46

.field public static final MINIMUM_REQUEST_LENGTH:I = 0x8

.field public static final MINIMUM_RESPONSE_LENGTH:I = 0x6

.field private static final SIZE_OF_INT:I = 0x4

.field private static final SIZE_OF_SHORT:I = 0x2


# instance fields
.field private final guestApplicationsCollection:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;

.field private final requestHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;",
            "Lcom/eltechs/axs/xconnectors/RequestHandler<",
            "Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorRequestsDispatcher;->guestApplicationsCollection:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;

    .line 43
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorRequestsDispatcher;->requestHandlers:Ljava/util/Map;

    .line 44
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorRequestsDispatcher;->requestHandlers:Ljava/util/Map;

    sget-object v1, Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;->TRANSLATOR_STARTED:Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;

    new-instance v2, Lcom/eltechs/axs/guestApplicationsTracker/impl/eventHandlers/TranslatorStarted;

    invoke-direct {v2, p1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/eventHandlers/TranslatorStarted;-><init>(Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorRequestsDispatcher;->requestHandlers:Ljava/util/Map;

    sget-object v1, Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;->ABOUT_TO_FORK:Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;

    new-instance v2, Lcom/eltechs/axs/guestApplicationsTracker/impl/eventHandlers/AboutToFork;

    invoke-direct {v2, p1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/eventHandlers/AboutToFork;-><init>(Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorRequestsDispatcher;->requestHandlers:Ljava/util/Map;

    sget-object v1, Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;->FORKED:Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;

    new-instance v2, Lcom/eltechs/axs/guestApplicationsTracker/impl/eventHandlers/Forked;

    invoke-direct {v2, p1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/eventHandlers/Forked;-><init>(Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public handleRequest(Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getAvailableBytesCount()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 54
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->INCOMPLETE_BUFFER:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    .line 57
    :cond_0
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getInt()I

    move-result v0

    .line 58
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getShort()S

    move-result v2

    invoke-static {v2}, Lcom/eltechs/axs/helpers/ArithHelpers;->extendAsUnsigned(S)I

    move-result v2

    sub-int/2addr v2, v1

    .line 59
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getShort()S

    move-result v1

    invoke-static {v1}, Lcom/eltechs/axs/helpers/ArithHelpers;->extendAsUnsigned(S)I

    move-result v1

    const v3, 0x4b524f46    # 1.3782854E7f

    if-ne v0, v3, :cond_3

    if-ltz v1, :cond_3

    .line 61
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorRequestsDispatcher;->requestHandlers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    goto :goto_0

    .line 67
    :cond_1
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getAvailableBytesCount()I

    move-result v0

    if-ge v0, v2, :cond_2

    .line 69
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->INCOMPLETE_BUFFER:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    .line 72
    :cond_2
    invoke-static {}, Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;->values()[Lcom/eltechs/axs/guestApplicationsTracker/impl/RequestCodes;

    move-result-object v0

    aget-object v0, v0, v1

    .line 73
    iget-object v1, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorRequestsDispatcher;->requestHandlers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/xconnectors/RequestHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/eltechs/axs/xconnectors/RequestHandler;->handleRequest(Ljava/lang/Object;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;

    move-result-object p1

    return-object p1

    .line 64
    :cond_3
    :goto_0
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED_KILL_CONNECTION:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1
.end method

.method public bridge synthetic handleRequest(Ljava/lang/Object;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    check-cast p1, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorRequestsDispatcher;->handleRequest(Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;

    move-result-object p1

    return-object p1
.end method
