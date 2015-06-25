.class public final Lcom/avira/android/notifyappupdate/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GCM_MESSAGE_BIG:Ljava/lang/String; = "notify_gcm_message_big"

.field private static final GCM_MESSAGE_BUTTON_NEGATIVE:Ljava/lang/String; = "notify_gcm_button_negative"

.field private static final GCM_MESSAGE_BUTTON_POSITIVE:Ljava/lang/String; = "notify_gcm_button_positive"

.field private static final GCM_MESSAGE_DEBUG:Ljava/lang/String; = "notify_gcm_message_debug"

.field private static final GCM_MESSAGE_DEBUG_DEFAULT_VALUE:Z = true

.field private static final GCM_MESSAGE_SMALL:Ljava/lang/String; = "notify_gcm_message_small"

.field private static final GCM_MESSAGE_STRING:Ljava/lang/String; = "notify_gcm_message_string"

.field private static final GCM_MESSAGE_TICKER:Ljava/lang/String; = "notify_gcm_message_ticker"

.field private static final GCM_MESSAGE_TITLE:Ljava/lang/String; = "notify_gcm_message_title"

.field private static final GCM_MESSAGE_URL:Ljava/lang/String; = "notify_gcm_url"

.field private static final GCM_MESSAGE_VERSION:Ljava/lang/String; = "notify_gcm_message_version"

.field private static final LAST_NOTIFY_ID:Ljava/lang/String; = "last_notify_id"

.field private static final STATUS_BAR_JB_AND_OLDER_METHOD_NAME:Ljava/lang/String; = "collapse"

.field private static final STATUS_BAR_NEWER_THEN_JB_METHOD_NAME:Ljava/lang/String; = "collapsePanels"

.field private static final STATUS_BAR_PACKAGE_NAME:Ljava/lang/String; = "android.app.StatusBarManager"

.field private static final STATUS_BAR_SERVICE_NAME:Ljava/lang/String; = "statusbar"

.field public static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/avira/android/notifyappupdate/c;->a:J

    return-void
.end method

.method public static a(Landroid/content/Context;Z)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 202
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v0, "open_url"

    invoke-static {p0, v0}, Lcom/avira/android/notifyappupdate/c;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "dismiss"

    invoke-static {p0, v0}, Lcom/avira/android/notifyappupdate/c;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Lcom/avira/android/notifyappupdate/UpdateResponse;
    .locals 2

    .prologue
    .line 218
    :try_start_0
    new-instance v0, Lcom/google/b/j;

    invoke-direct {v0}, Lcom/google/b/j;-><init>()V

    const-class v1, Lcom/avira/android/notifyappupdate/UpdateResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/b/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/notifyappupdate/UpdateResponse;
    :try_end_0
    .catch Lcom/google/b/aa; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 56
    const-string v0, "notify_gcm_message_string"

    invoke-static {p0, v0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    const-string v0, "notify_gcm_message_version"

    invoke-static {p0, v0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    const-string v0, "notify_gcm_message_debug"

    invoke-static {p0, v0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    const-string v0, "notify_gcm_message_title"

    invoke-static {p0, v0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    const-string v0, "notify_gcm_message_ticker"

    invoke-static {p0, v0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    const-string v0, "notify_gcm_message_small"

    invoke-static {p0, v0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    const-string v0, "notify_gcm_message_big"

    invoke-static {p0, v0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    const-string v0, "notify_gcm_button_positive"

    invoke-static {p0, v0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    const-string v0, "notify_gcm_button_negative"

    invoke-static {p0, v0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    const-string v0, "notify_gcm_url"

    invoke-static {p0, v0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    const-string v0, "last_notify_id"

    invoke-static {p0, v0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 71
    invoke-static {p1}, Lcom/avira/android/notifyappupdate/c;->a(Ljava/lang/String;)Lcom/avira/android/notifyappupdate/UpdateResponse;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_6

    .line 74
    invoke-static {p0}, Lcom/avira/android/notifyappupdate/c;->a(Landroid/content/Context;)V

    .line 75
    const-string v1, "notify_gcm_message_string"

    invoke-static {p0, v1, p1}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "notify_gcm_message_version"

    iget v2, v0, Lcom/avira/android/notifyappupdate/UpdateResponse;->new_ver:I

    invoke-static {p0, v1, v2}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 77
    const-string v1, "notify_gcm_message_debug"

    iget-boolean v2, v0, Lcom/avira/android/notifyappupdate/UpdateResponse;->debug:Z

    invoke-static {p0, v1, v2}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 78
    iget-object v1, v0, Lcom/avira/android/notifyappupdate/UpdateResponse;->ticker:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "notify_gcm_message_ticker"

    iget-object v2, v0, Lcom/avira/android/notifyappupdate/UpdateResponse;->ticker:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    iget-object v1, v0, Lcom/avira/android/notifyappupdate/UpdateResponse;->title:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 84
    const-string v1, "notify_gcm_message_title"

    iget-object v2, v0, Lcom/avira/android/notifyappupdate/UpdateResponse;->title:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_1
    iget-object v1, v0, Lcom/avira/android/notifyappupdate/UpdateResponse;->msg_small:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 88
    const-string v1, "notify_gcm_message_small"

    iget-object v2, v0, Lcom/avira/android/notifyappupdate/UpdateResponse;->msg_small:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_2
    iget-object v1, v0, Lcom/avira/android/notifyappupdate/UpdateResponse;->msg_big:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 92
    const-string v1, "notify_gcm_message_big"

    iget-object v2, v0, Lcom/avira/android/notifyappupdate/UpdateResponse;->msg_big:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_3
    iget-object v1, v0, Lcom/avira/android/notifyappupdate/UpdateResponse;->btn_positive:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 96
    const-string v1, "notify_gcm_button_positive"

    iget-object v2, v0, Lcom/avira/android/notifyappupdate/UpdateResponse;->btn_positive:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_4
    iget-object v1, v0, Lcom/avira/android/notifyappupdate/UpdateResponse;->btn_negative:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 100
    const-string v1, "notify_gcm_button_negative"

    iget-object v2, v0, Lcom/avira/android/notifyappupdate/UpdateResponse;->btn_negative:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_5
    iget-object v1, v0, Lcom/avira/android/notifyappupdate/UpdateResponse;->url:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 104
    const-string v1, "notify_gcm_url"

    iget-object v0, v0, Lcom/avira/android/notifyappupdate/UpdateResponse;->url:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_6
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 209
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/notifyappupdate/NotifyService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 116
    const-string v2, "notify_gcm_message_debug"

    invoke-static {p0, v2, v0}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "notify_gcm_message_version"

    invoke-static {p0, v2, v1}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/avira/android/device/a;->k()I

    move-result v3

    if-ne v2, v3, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-static {p0}, Lcom/avira/android/notifyappupdate/c;->o(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)J
    .locals 6

    .prologue
    .line 131
    const-string v0, "notify_gcm_message_string"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/notifyappupdate/c;->a(Ljava/lang/String;)Lcom/avira/android/notifyappupdate/UpdateResponse;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/avira/android/notifyappupdate/UpdateResponse;->schedule:[I

    if-eqz v1, :cond_0

    .line 134
    const-string v1, "last_notify_id"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 135
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/avira/android/notifyappupdate/UpdateResponse;->schedule:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 137
    const-string v2, "last_notify_id"

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v2, v1}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    iget-object v0, v0, Lcom/avira/android/notifyappupdate/UpdateResponse;->schedule:[I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v0, v0

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    .line 141
    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/avira/android/notifyappupdate/c;->a:J

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    const-string v0, "notify_gcm_message_ticker"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/avira/android/notifyappupdate/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    const-string v0, "notify_gcm_message_title"

    const v1, 0x7f080369

    invoke-static {p0, v0, v1}, Lcom/avira/android/notifyappupdate/c;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    const-string v0, "notify_gcm_message_small"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/avira/android/notifyappupdate/c;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    const-string v0, "notify_gcm_message_big"

    const v1, 0x7f08036a

    invoke-static {p0, v0, v1}, Lcom/avira/android/notifyappupdate/c;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    const-string v0, "notify_gcm_button_positive"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    const-string v0, "notify_gcm_button_negative"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 195
    invoke-static {p0}, Lcom/avira/android/notifyappupdate/c;->o(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 196
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 198
    return-void
.end method

.method public static l(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 229
    const-string v0, "notify_gcm_button_negative"

    invoke-static {p0, v0}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static m(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 234
    const-string v0, "notify_gcm_button_positive"

    invoke-static {p0, v0}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static n(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 239
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 242
    :try_start_0
    const-string v0, "android.app.StatusBarManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 243
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-gt v0, v3, :cond_0

    const-string v0, "collapse"

    :goto_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :goto_1
    return-void

    .line 243
    :cond_0
    const-string v0, "collapsePanels"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static o(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 189
    const-string v0, "notify_gcm_url"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 190
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v1
.end method
