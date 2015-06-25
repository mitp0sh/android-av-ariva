.class public Lcom/avira/android/idsafeguard/services/ISDismissalIntentService;
.super Lcom/avira/android/idsafeguard/services/ISIntentService;
.source "SourceFile"


# static fields
.field public static final BREACH_ID_EXTRA:Ljava/lang/String; = "com.avira.android.idsafeguard.services.ISDismissalIntentService.breachId"

.field public static final EMAIL_EXTRA:Ljava/lang/String; = "com.avira.android.idsafeguard.services.ISDismissalIntentService.email"

.field private static final TAG:Ljava/lang/String;

.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "com.avira.android.idsafeguard.services.ISDismissalIntentService.dismissSingleThreat"

    sput-object v0, Lcom/avira/android/idsafeguard/services/ISDismissalIntentService;->a:Ljava/lang/String;

    .line 24
    const-string v0, "com.avira.android.idsafeguard.services.ISDismissalIntentService.dismissSingleBreachedEmail"

    sput-object v0, Lcom/avira/android/idsafeguard/services/ISDismissalIntentService;->b:Ljava/lang/String;

    .line 28
    const-class v0, Lcom/avira/android/idsafeguard/services/ISDismissalIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/idsafeguard/services/ISDismissalIntentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/avira/android/idsafeguard/services/ISIntentService;-><init>()V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v3, Lcom/avira/android/idsafeguard/services/ISDismissalIntentService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Action = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/avira/android/idsafeguard/services/ISDismissalIntentService;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v3, Lcom/avira/android/idsafeguard/services/ISDismissalIntentService;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    new-instance v0, Lcom/avira/android/idsafeguard/database/a;

    invoke-virtual {p0}, Lcom/avira/android/idsafeguard/services/ISDismissalIntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/avira/android/idsafeguard/database/a;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/avira/android/idsafeguard/services/ISDismissalIntentService;->d:Lcom/avira/android/idsafeguard/database/a;

    .line 42
    const-string v0, "emails"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    iget-object v3, p0, Lcom/avira/android/idsafeguard/services/ISDismissalIntentService;->d:Lcom/avira/android/idsafeguard/database/a;

    invoke-virtual {v3, v0}, Lcom/avira/android/idsafeguard/database/a;->b(Ljava/lang/String;)[I

    move-result-object v3

    .line 46
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 48
    new-instance v4, Lcom/avira/android/idsafeguard/api/gson/ISDismissBreachesApiRequestData$EmailBreaches;

    invoke-direct {v4, v0, v3}, Lcom/avira/android/idsafeguard/api/gson/ISDismissBreachesApiRequestData$EmailBreaches;-><init>(Ljava/lang/String;[I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_1
    sget-object v3, Lcom/avira/android/idsafeguard/services/ISDismissalIntentService;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    const-string v0, "com.avira.android.idsafeguard.services.ISDismissalIntentService.email"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v3, "com.avira.android.idsafeguard.services.ISDismissalIntentService.breachId"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 57
    new-instance v3, Lcom/avira/android/idsafeguard/api/gson/ISDismissBreachesApiRequestData$EmailBreaches;

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v1, v4, v5

    invoke-direct {v3, v0, v4}, Lcom/avira/android/idsafeguard/api/gson/ISDismissBreachesApiRequestData$EmailBreaches;-><init>(Ljava/lang/String;[I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/avira/android/idsafeguard/services/ISDismissalIntentService;->c:Lcom/avira/android/idsafeguard/b/b;

    invoke-interface {v0, v2}, Lcom/avira/android/idsafeguard/b/b;->a(Ljava/util/Collection;)Lcom/avira/android/idsafeguard/api/gson/ISApiResponse;

    .line 61
    return-void
.end method
