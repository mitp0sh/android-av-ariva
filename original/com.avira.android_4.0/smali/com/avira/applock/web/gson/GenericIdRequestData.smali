.class public Lcom/avira/applock/web/gson/GenericIdRequestData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final id:Lcom/avira/applock/web/gson/GenericIdRequestData$Id;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/avira/applock/web/gson/GenericIdRequestData$Id;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/avira/applock/web/gson/GenericIdRequestData$Id;-><init>(Lcom/avira/applock/web/gson/GenericIdRequestData;Ljava/lang/String;Ljava/lang/String;Lcom/avira/applock/web/gson/GenericIdRequestData$1;)V

    iput-object v0, p0, Lcom/avira/applock/web/gson/GenericIdRequestData;->id:Lcom/avira/applock/web/gson/GenericIdRequestData$Id;

    .line 53
    return-void
.end method
