.class public abstract Lcom/eltechs/axs/guestApplicationsTracker/impl/eventHandlers/RequestHandlerBase;
.super Ljava/lang/Object;
.source "RequestHandlerBase.java"

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
.field protected static final SIZE_OF_INT:I = 0x4


# instance fields
.field protected final guestApplicationsCollection:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;


# direct methods
.method protected constructor <init>(Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/eventHandlers/RequestHandlerBase;->guestApplicationsCollection:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;

    return-void
.end method
