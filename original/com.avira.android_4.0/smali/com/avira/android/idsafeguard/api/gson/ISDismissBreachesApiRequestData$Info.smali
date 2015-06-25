.class Lcom/avira/android/idsafeguard/api/gson/ISDismissBreachesApiRequestData$Info;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field emailBreaches:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/avira/android/idsafeguard/api/gson/ISDismissBreachesApiRequestData$EmailBreaches;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/avira/android/idsafeguard/api/gson/ISDismissBreachesApiRequestData$EmailBreaches;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/avira/android/idsafeguard/api/gson/ISDismissBreachesApiRequestData$Info;->emailBreaches:Ljava/util/Collection;

    .line 36
    return-void
.end method
