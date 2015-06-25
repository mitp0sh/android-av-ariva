.class public Lcom/avira/android/idsafeguard/api/gson/ISDismissBreachesApiRequestData;
.super Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData;
.source "SourceFile"


# instance fields
.field private final info:Lcom/avira/android/idsafeguard/api/gson/ISDismissBreachesApiRequestData$Info;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/avira/android/idsafeguard/api/gson/ISDismissBreachesApiRequestData$EmailBreaches;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/avira/android/idsafeguard/api/gson/ISApiRequestData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/avira/android/idsafeguard/api/gson/ISDismissBreachesApiRequestData$Info;

    invoke-direct {v0, p3}, Lcom/avira/android/idsafeguard/api/gson/ISDismissBreachesApiRequestData$Info;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avira/android/idsafeguard/api/gson/ISDismissBreachesApiRequestData;->info:Lcom/avira/android/idsafeguard/api/gson/ISDismissBreachesApiRequestData$Info;

    .line 69
    return-void
.end method
