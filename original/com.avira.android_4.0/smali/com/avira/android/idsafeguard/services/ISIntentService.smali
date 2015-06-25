.class public Lcom/avira/android/idsafeguard/services/ISIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field public static final EMAILS_EXTRA:Ljava/lang/String; = "emails"

.field private static final NAME:Ljava/lang/String;

.field public static final NUM_OF_CONTACTS_PREFERENCE_KEY:Ljava/lang/String; = "number_of_contacts"

.field public static final RESULT_EXTRA:Ljava/lang/String; = "result"

.field public static final STATE_EXTRA:Ljava/lang/String; = "state"

.field public static final STATE_INTENT:Ljava/lang/String; = "com.avira.android.idsafeguard.ISIntentService.State"

.field private static final TAG:Ljava/lang/String;

.field private static a:Lcom/avira/android/idsafeguard/services/b;

.field private static b:Lcom/avira/android/idsafeguard/services/a;


# instance fields
.field protected c:Lcom/avira/android/idsafeguard/b/b;

.field protected d:Lcom/avira/android/idsafeguard/database/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/avira/android/idsafeguard/services/ISIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/idsafeguard/services/ISIntentService;->NAME:Ljava/lang/String;

    .line 37
    const-class v0, Lcom/avira/android/idsafeguard/services/ISIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/idsafeguard/services/ISIntentService;->TAG:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/avira/android/idsafeguard/services/b;->IDLE:Lcom/avira/android/idsafeguard/services/b;

    sput-object v0, Lcom/avira/android/idsafeguard/services/ISIntentService;->a:Lcom/avira/android/idsafeguard/services/b;

    .line 58
    sget-object v0, Lcom/avira/android/idsafeguard/services/a;->SUCCESS:Lcom/avira/android/idsafeguard/services/a;

    sput-object v0, Lcom/avira/android/idsafeguard/services/ISIntentService;->b:Lcom/avira/android/idsafeguard/services/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/avira/android/idsafeguard/services/ISIntentService;->NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/avira/android/idsafeguard/services/ISIntentService;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/avira/android/idsafeguard/api/b;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-static {}, Lcom/avira/android/database/h;->e()Lcom/avira/android/database/h;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/idsafeguard/api/b;-><init>(Landroid/content/Context;Lcom/avira/android/database/h;)V

    .line 79
    new-instance v1, Lcom/avira/android/idsafeguard/api/a;

    invoke-static {}, Lcom/avira/android/common/web/o;->a()Lcom/avira/android/common/web/o;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/avira/android/idsafeguard/api/a;-><init>(Lcom/avira/android/idsafeguard/api/b;Lcom/avira/android/common/web/o;)V

    iput-object v1, p0, Lcom/avira/android/idsafeguard/services/ISIntentService;->c:Lcom/avira/android/idsafeguard/b/b;

    .line 80
    return-void
.end method

.method public static a()Lcom/avira/android/idsafeguard/services/b;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/avira/android/idsafeguard/services/ISIntentService;->a:Lcom/avira/android/idsafeguard/services/b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/avira/android/idsafeguard/d/a;->a(Landroid/content/ContentResolver;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 227
    invoke-static {}, Lcom/avira/android/idsafeguard/d/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/avira/android/idsafeguard/services/ISIntentService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    const-string v2, "emails"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 233
    return-void
.end method

.method public static b()Lcom/avira/android/idsafeguard/services/a;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/avira/android/idsafeguard/services/ISIntentService;->b:Lcom/avira/android/idsafeguard/services/a;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/avira/android/idsafeguard/services/b;->IDLE:Lcom/avira/android/idsafeguard/services/b;

    sput-object v0, Lcom/avira/android/idsafeguard/services/ISIntentService;->a:Lcom/avira/android/idsafeguard/services/b;

    .line 138
    sget-object v0, Lcom/avira/android/idsafeguard/services/a;->ERROR:Lcom/avira/android/idsafeguard/services/a;

    sput-object v0, Lcom/avira/android/idsafeguard/services/ISIntentService;->b:Lcom/avira/android/idsafeguard/services/a;

    .line 141
    invoke-direct {p0}, Lcom/avira/android/idsafeguard/services/ISIntentService;->d()V

    .line 142
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.avira.android.idsafeguard.ISIntentService.State"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    const-string v1, "state"

    sget-object v2, Lcom/avira/android/idsafeguard/services/ISIntentService;->a:Lcom/avira/android/idsafeguard/services/b;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 209
    sget-object v1, Lcom/avira/android/idsafeguard/services/ISIntentService;->a:Lcom/avira/android/idsafeguard/services/b;

    sget-object v2, Lcom/avira/android/idsafeguard/services/b;->IDLE:Lcom/avira/android/idsafeguard/services/b;

    if-ne v1, v2, :cond_0

    .line 211
    const-string v1, "result"

    sget-object v2, Lcom/avira/android/idsafeguard/services/ISIntentService;->b:Lcom/avira/android/idsafeguard/services/a;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 213
    :cond_0
    invoke-static {p0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/o;->a(Landroid/content/Intent;)Z

    .line 214
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 86
    const-string v0, "emails"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 89
    :cond_0
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    sget-object v1, Lcom/avira/android/idsafeguard/services/ISIntentService;->TAG:Ljava/lang/String;

    const-string v2, "Email list is empty"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 93
    :cond_1
    new-instance v1, Lcom/avira/android/idsafeguard/database/a;

    invoke-virtual {p0}, Lcom/avira/android/idsafeguard/services/ISIntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/avira/android/idsafeguard/database/a;-><init>(Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/avira/android/idsafeguard/services/ISIntentService;->d:Lcom/avira/android/idsafeguard/database/a;

    .line 95
    sget-object v1, Lcom/avira/android/idsafeguard/services/b;->ACTIVE:Lcom/avira/android/idsafeguard/services/b;

    sput-object v1, Lcom/avira/android/idsafeguard/services/ISIntentService;->a:Lcom/avira/android/idsafeguard/services/b;

    invoke-direct {p0}, Lcom/avira/android/idsafeguard/services/ISIntentService;->d()V

    const-string v1, "number_of_contacts"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/avira/android/idsafeguard/services/ISIntentService;->d:Lcom/avira/android/idsafeguard/database/a;

    invoke-virtual {v1}, Lcom/avira/android/idsafeguard/database/a;->c()I

    iget-object v1, p0, Lcom/avira/android/idsafeguard/services/ISIntentService;->d:Lcom/avira/android/idsafeguard/database/a;

    invoke-virtual {v1}, Lcom/avira/android/idsafeguard/database/a;->b()I

    .line 97
    iget-object v1, p0, Lcom/avira/android/idsafeguard/services/ISIntentService;->c:Lcom/avira/android/idsafeguard/b/b;

    invoke-interface {v1}, Lcom/avira/android/idsafeguard/b/b;->a()Lcom/avira/android/idsafeguard/api/gson/ISBreachesResponse;

    move-result-object v1

    .line 98
    if-nez v1, :cond_2

    .line 100
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    sget-object v1, Lcom/avira/android/idsafeguard/services/ISIntentService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to get list of breaches"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcom/avira/android/idsafeguard/services/ISIntentService;->c()V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v2, p0, Lcom/avira/android/idsafeguard/services/ISIntentService;->c:Lcom/avira/android/idsafeguard/b/b;

    invoke-interface {v2, v0}, Lcom/avira/android/idsafeguard/b/b;->b(Ljava/util/Collection;)Lcom/avira/android/idsafeguard/api/gson/ISCheckEmailsResponse;

    move-result-object v2

    .line 106
    if-nez v2, :cond_3

    .line 108
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    sget-object v1, Lcom/avira/android/idsafeguard/services/ISIntentService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to check emails"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/avira/android/idsafeguard/services/ISIntentService;->c()V

    goto :goto_0

    .line 113
    :cond_3
    iget-object v3, p0, Lcom/avira/android/idsafeguard/services/ISIntentService;->c:Lcom/avira/android/idsafeguard/b/b;

    invoke-interface {v3}, Lcom/avira/android/idsafeguard/b/b;->b()Lcom/avira/android/idsafeguard/api/gson/ISGetDismissedBreachesResponse;

    move-result-object v3

    .line 115
    if-nez v3, :cond_4

    .line 117
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    sget-object v1, Lcom/avira/android/idsafeguard/services/ISIntentService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to get list of dismissed emails"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/avira/android/idsafeguard/services/ISIntentService;->c()V

    goto :goto_0

    .line 123
    :cond_4
    iget-object v4, p0, Lcom/avira/android/idsafeguard/services/ISIntentService;->c:Lcom/avira/android/idsafeguard/b/b;

    const v5, 0x7f08008d

    invoke-virtual {p0, v5}, Lcom/avira/android/idsafeguard/services/ISIntentService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/avira/android/idsafeguard/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    const-string v5, "is_email_template_cache"

    invoke-static {p0, v5, v4}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v4, p0, Lcom/avira/android/idsafeguard/services/ISIntentService;->d:Lcom/avira/android/idsafeguard/database/a;

    invoke-virtual {v4, v1}, Lcom/avira/android/idsafeguard/database/a;->b(Lcom/avira/android/idsafeguard/api/gson/ISBreachesResponse;)I

    .line 127
    iget-object v1, p0, Lcom/avira/android/idsafeguard/services/ISIntentService;->d:Lcom/avira/android/idsafeguard/database/a;

    invoke-virtual {v1, v2}, Lcom/avira/android/idsafeguard/database/a;->a(Lcom/avira/android/idsafeguard/api/gson/ISCheckEmailsResponse;)I

    .line 128
    iget-object v1, p0, Lcom/avira/android/idsafeguard/services/ISIntentService;->d:Lcom/avira/android/idsafeguard/database/a;

    invoke-virtual {v3}, Lcom/avira/android/idsafeguard/api/gson/ISGetDismissedBreachesResponse;->getArrayOfContentValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avira/android/idsafeguard/database/a;->a(Ljava/util/Collection;)I

    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v1, Lcom/avira/android/idsafeguard/services/b;->IDLE:Lcom/avira/android/idsafeguard/services/b;

    sput-object v1, Lcom/avira/android/idsafeguard/services/ISIntentService;->a:Lcom/avira/android/idsafeguard/services/b;

    sget-object v1, Lcom/avira/android/idsafeguard/services/a;->SUCCESS:Lcom/avira/android/idsafeguard/services/a;

    sput-object v1, Lcom/avira/android/idsafeguard/services/ISIntentService;->b:Lcom/avira/android/idsafeguard/services/a;

    if-lez v0, :cond_5

    add-int/lit8 v0, v0, -0x1

    :cond_5
    const-string v1, "number_of_contacts"

    invoke-static {p0, v1, v0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/avira/android/idsafeguard/services/ISIntentService;->d()V

    goto/16 :goto_0
.end method
