.class public final Lcom/facebook/cy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACTIVITY_NULL_MESSAGE:Ljava/lang/String; = "activity cannot be null"

.field private static final DIALOG_CALL_ID_SAVE_KEY:Ljava/lang/String; = "com.facebook.UiLifecycleHelper.pendingFacebookDialogCallKey"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/facebook/cn;

.field private final c:Landroid/content/BroadcastReceiver;

.field private final d:Landroid/support/v4/content/o;

.field private e:Ljava/util/UUID;

.field private f:Lcom/facebook/b/cb;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/cn;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/facebook/cy;->a:Landroid/app/Activity;

    .line 76
    iput-object p2, p0, Lcom/facebook/cy;->b:Lcom/facebook/cn;

    .line 77
    new-instance v0, Lcom/facebook/cz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/cz;-><init>(Lcom/facebook/cy;B)V

    iput-object v0, p0, Lcom/facebook/cy;->c:Landroid/content/BroadcastReceiver;

    .line 78
    invoke-static {p1}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cy;->d:Landroid/support/v4/content/o;

    .line 79
    invoke-static {}, Lcom/facebook/b/cb;->a()Lcom/facebook/b/cb;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cy;->f:Lcom/facebook/b/cb;

    .line 82
    invoke-static {p1}, Lcom/facebook/cu;->a(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/facebook/cy;)Lcom/facebook/cn;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/cy;->b:Lcom/facebook/cn;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/facebook/cy;->e:Ljava/util/UUID;

    if-nez v0, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/facebook/cy;->f:Lcom/facebook/b/cb;

    iget-object v1, p0, Lcom/facebook/cy;->e:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/facebook/b/cb;->b(Ljava/util/UUID;)Lcom/facebook/widget/FacebookDialog$PendingCall;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/facebook/cy;->d()V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/facebook/cy;->f:Lcom/facebook/b/cb;

    iget-object v1, p0, Lcom/facebook/cy;->e:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/facebook/b/cb;->a(Ljava/util/UUID;)V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/cy;->e:Ljava/util/UUID;

    .line 346
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 114
    invoke-static {}, Lcom/facebook/by;->h()Lcom/facebook/by;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_1

    .line 116
    iget-object v1, p0, Lcom/facebook/cy;->b:Lcom/facebook/cn;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/facebook/cy;->b:Lcom/facebook/cn;

    invoke-virtual {v0, v1}, Lcom/facebook/by;->a(Lcom/facebook/cn;)V

    .line 119
    :cond_0
    sget-object v1, Lcom/facebook/cs;->CREATED_TOKEN_LOADED:Lcom/facebook/cs;

    invoke-virtual {v0}, Lcom/facebook/by;->c()Lcom/facebook/cs;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/cs;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/by;->a(Lcom/facebook/ck;)V

    .line 125
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/facebook/cy;->d:Landroid/support/v4/content/o;

    iget-object v2, p0, Lcom/facebook/cy;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 132
    return-void
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 156
    invoke-static {}, Lcom/facebook/by;->h()Lcom/facebook/by;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    .line 158
    iget-object v1, p0, Lcom/facebook/cy;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/by;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/facebook/cy;->a:Landroid/app/Activity;

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/b/an;->a(Landroid/content/Context;IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    :cond_1
    :goto_0
    return-void

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/facebook/cy;->e:Ljava/util/UUID;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/cy;->f:Lcom/facebook/b/cb;

    iget-object v1, p0, Lcom/facebook/cy;->e:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/facebook/b/cb;->b(Ljava/util/UUID;)Lcom/facebook/widget/FacebookDialog$PendingCall;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/widget/FacebookDialog$PendingCall;->c()I

    move-result v1

    if-ne v1, p1, :cond_1

    if-nez p3, :cond_3

    invoke-direct {p0}, Lcom/facebook/cy;->c()V

    goto :goto_0

    :cond_3
    invoke-static {p3}, Lcom/facebook/b/bw;->a(Landroid/content/Intent;)Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/facebook/cy;->e:Ljava/util/UUID;

    invoke-virtual {v2, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/facebook/cy;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, p3, v1}, Lcom/facebook/widget/FacebookDialog;->a(Lcom/facebook/widget/FacebookDialog$PendingCall;ILandroid/content/Intent;Lcom/facebook/widget/c;)Z

    :goto_1
    invoke-direct {p0}, Lcom/facebook/cy;->d()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/facebook/cy;->c()V

    goto :goto_1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/facebook/by;->h()Lcom/facebook/by;

    move-result-object v0

    .line 92
    if-nez v0, :cond_2

    .line 93
    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/facebook/cy;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/facebook/cy;->b:Lcom/facebook/cn;

    invoke-static {v0, v1, p1}, Lcom/facebook/by;->a(Landroid/content/Context;Lcom/facebook/cn;Landroid/os/Bundle;)Lcom/facebook/by;

    move-result-object v0

    .line 96
    :cond_0
    if-nez v0, :cond_1

    .line 97
    new-instance v0, Lcom/facebook/by;

    iget-object v1, p0, Lcom/facebook/cy;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/facebook/by;-><init>(Landroid/content/Context;)V

    .line 99
    :cond_1
    invoke-static {v0}, Lcom/facebook/by;->a(Lcom/facebook/by;)V

    .line 101
    :cond_2
    if-eqz p1, :cond_4

    .line 102
    const-string v0, "com.facebook.UiLifecycleHelper.pendingFacebookDialogCallKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_3

    .line 104
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cy;->e:Ljava/util/UUID;

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/facebook/cy;->f:Lcom/facebook/b/cb;

    invoke-virtual {v0, p1}, Lcom/facebook/b/cb;->b(Landroid/os/Bundle;)V

    .line 108
    :cond_4
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/facebook/cy;->d:Landroid/support/v4/content/o;

    iget-object v1, p0, Lcom/facebook/cy;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;)V

    .line 188
    iget-object v0, p0, Lcom/facebook/cy;->b:Lcom/facebook/cn;

    if-eqz v0, :cond_0

    .line 189
    invoke-static {}, Lcom/facebook/by;->h()Lcom/facebook/by;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_0

    .line 191
    iget-object v1, p0, Lcom/facebook/cy;->b:Lcom/facebook/cn;

    invoke-virtual {v0, v1}, Lcom/facebook/by;->b(Lcom/facebook/cn;)V

    .line 194
    :cond_0
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 174
    invoke-static {}, Lcom/facebook/by;->h()Lcom/facebook/by;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/by;->a(Lcom/facebook/by;Landroid/os/Bundle;)V

    .line 175
    iget-object v0, p0, Lcom/facebook/cy;->e:Ljava/util/UUID;

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "com.facebook.UiLifecycleHelper.pendingFacebookDialogCallKey"

    iget-object v1, p0, Lcom/facebook/cy;->e:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/facebook/cy;->f:Lcom/facebook/b/cb;

    invoke-virtual {v0, p1}, Lcom/facebook/b/cb;->a(Landroid/os/Bundle;)V

    .line 179
    return-void
.end method
