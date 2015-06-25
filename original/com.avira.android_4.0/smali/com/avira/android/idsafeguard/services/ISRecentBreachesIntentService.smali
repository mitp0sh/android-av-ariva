.class public Lcom/avira/android/idsafeguard/services/ISRecentBreachesIntentService;
.super Lcom/avira/android/idsafeguard/services/ISIntentService;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/avira/android/idsafeguard/services/ISRecentBreachesIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/idsafeguard/services/ISRecentBreachesIntentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/avira/android/idsafeguard/services/ISIntentService;-><init>()V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/avira/android/idsafeguard/database/a;

    invoke-virtual {p0}, Lcom/avira/android/idsafeguard/services/ISRecentBreachesIntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avira/android/idsafeguard/database/a;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/avira/android/idsafeguard/services/ISRecentBreachesIntentService;->d:Lcom/avira/android/idsafeguard/database/a;

    .line 29
    iget-object v0, p0, Lcom/avira/android/idsafeguard/services/ISRecentBreachesIntentService;->d:Lcom/avira/android/idsafeguard/database/a;

    invoke-virtual {v0}, Lcom/avira/android/idsafeguard/database/a;->a()I

    .line 30
    iget-object v0, p0, Lcom/avira/android/idsafeguard/services/ISRecentBreachesIntentService;->c:Lcom/avira/android/idsafeguard/b/b;

    invoke-interface {v0}, Lcom/avira/android/idsafeguard/b/b;->c()Lcom/avira/android/idsafeguard/api/gson/ISBreachesResponse;

    move-result-object v0

    .line 31
    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    sget-object v1, Lcom/avira/android/idsafeguard/services/ISRecentBreachesIntentService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to get list of recent breaches"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/avira/android/idsafeguard/services/ISRecentBreachesIntentService;->d:Lcom/avira/android/idsafeguard/database/a;

    invoke-virtual {v1, v0}, Lcom/avira/android/idsafeguard/database/a;->a(Lcom/avira/android/idsafeguard/api/gson/ISBreachesResponse;)I

    goto :goto_0
.end method
