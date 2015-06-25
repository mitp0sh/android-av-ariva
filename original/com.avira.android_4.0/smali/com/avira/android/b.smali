.class public Lcom/avira/android/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DASHBOARD_ANTIVIRUS_BTN:Ljava/lang/String; = "onDashboardAntivirusClickedEvent"

.field public static final DASHBOARD_BLACKLIST_BTN:Ljava/lang/String; = "onDashboardBlacklistClickedEvent"

.field public static final IABSTATUS_GAVEUP_ON_PAYING:I = 0x3

.field public static final IABSTATUS_GAVEUP_ON_PREMIUM_LANDING:I = 0x1

.field public static final IABSTATUS_GAVEUP_ON_REGISTRATION:I = 0x2

.field public static final IABSTATUS_PURCHASED:I = 0x4

.field public static final IAB_GAVEUP_ON_PAYING:Ljava/lang/String; = "Gave up on paying"

.field public static final IAB_GAVEUP_ON_PREMIUM_LANDING:Ljava/lang/String; = "Gave up on premium landing"

.field public static final IAB_GAVEUP_ON_REGISTRATION:Ljava/lang/String; = "Gave up on account registration/login"

.field public static final IAB_PURCHASED:Ljava/lang/String; = "Purchased through IAB"

.field public static final PREFS_IABSTATUS_KEY:Ljava/lang/String; = "prefs_iab_status_tracking"

.field public static final PREFS_USE_MIXPANEL_TRACKING:Ljava/lang/String; = "prefs_use_mixpanel_tracking"

.field private static final TAG:Ljava/lang/String;

.field private static a:Lcom/avira/android/b;


# instance fields
.field private b:Lcom/mixpanel/android/mpmetrics/r;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/avira/android/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/b;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/avira/android/b;->a:Lcom/avira/android/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/b;->b:Lcom/mixpanel/android/mpmetrics/r;

    .line 36
    iput-boolean v5, p0, Lcom/avira/android/b;->c:Z

    .line 40
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080117

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Lcom/mixpanel/android/mpmetrics/r;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/r;

    move-result-object v2

    iput-object v2, p0, Lcom/avira/android/b;->b:Lcom/mixpanel/android/mpmetrics/r;

    .line 46
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v2, Lcom/avira/android/b;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "token "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "prefs_use_mixpanel_tracking"

    invoke-static {v0, v1, v5}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 49
    iput-boolean v0, p0, Lcom/avira/android/b;->c:Z

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v1, Lcom/avira/android/b;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mixpanel tracking state = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static a()Lcom/avira/android/b;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/avira/android/b;->a:Lcom/avira/android/b;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/avira/android/b;

    invoke-direct {v0}, Lcom/avira/android/b;-><init>()V

    sput-object v0, Lcom/avira/android/b;->a:Lcom/avira/android/b;

    .line 59
    :cond_0
    sget-object v0, Lcom/avira/android/b;->a:Lcom/avira/android/b;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/avira/android/b;->c:Z

    if-nez v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "prefs_iab_status_tracking"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 113
    if-le p1, v0, :cond_0

    .line 115
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 119
    :pswitch_0
    const-string v0, "Gave up on premium landing"

    .line 135
    :goto_1
    iget-object v1, p0, Lcom/avira/android/b;->b:Lcom/mixpanel/android/mpmetrics/r;

    invoke-virtual {v1, v0}, Lcom/mixpanel/android/mpmetrics/r;->a(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    const-string v2, "prefs_iab_status_tracking"

    invoke-static {v1, v2, p1}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 140
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v1, Lcom/avira/android/b;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "track event :: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :pswitch_1
    const-string v0, "Gave up on account registration/login"

    goto :goto_1

    .line 125
    :pswitch_2
    const-string v0, "Gave up on paying"

    goto :goto_1

    .line 128
    :pswitch_3
    const-string v0, "Purchased through IAB"

    goto :goto_1

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 80
    :try_start_0
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    iget-object v1, p0, Lcom/avira/android/b;->b:Lcom/mixpanel/android/mpmetrics/r;

    invoke-virtual {v1, v0}, Lcom/mixpanel/android/mpmetrics/r;->a(Lorg/json/JSONObject;)V

    .line 88
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/avira/android/b;->b:Lcom/mixpanel/android/mpmetrics/r;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/r;->a()V

    .line 147
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/avira/android/b;->c:Z

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/avira/android/b;->b:Lcom/mixpanel/android/mpmetrics/r;

    invoke-virtual {v0, p1}, Lcom/mixpanel/android/mpmetrics/r;->a(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/b;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Event name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
