.class public final Lcom/facebook/widget/FacebookDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COMPLETION_GESTURE_CANCEL:Ljava/lang/String; = "cancel"

.field private static final EXTRA_DIALOG_COMPLETE_KEY:Ljava/lang/String; = "com.facebook.platform.extra.DID_COMPLETE"

.field private static final EXTRA_DIALOG_COMPLETION_GESTURE_KEY:Ljava/lang/String; = "com.facebook.platform.extra.COMPLETION_GESTURE"

.field private static final EXTRA_DIALOG_COMPLETION_ID_KEY:Ljava/lang/String; = "com.facebook.platform.extra.POST_ID"

.field private static a:Lcom/facebook/ay;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Landroid/support/v4/app/Fragment;

.field private d:Lcom/facebook/widget/FacebookDialog$PendingCall;

.field private e:Lcom/facebook/widget/e;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/e;)V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog;->b:Landroid/app/Activity;

    .line 310
    iput-object p2, p0, Lcom/facebook/widget/FacebookDialog;->c:Landroid/support/v4/app/Fragment;

    .line 311
    iput-object p3, p0, Lcom/facebook/widget/FacebookDialog;->d:Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 312
    iput-object p4, p0, Lcom/facebook/widget/FacebookDialog;->e:Lcom/facebook/widget/e;

    .line 313
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/e;B)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/widget/FacebookDialog;-><init>(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/e;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0}, Lcom/facebook/widget/FacebookDialog;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/facebook/widget/FacebookDialog;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/widget/FacebookDialog;->b(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/Iterable;)Z
    .locals 3

    .prologue
    .line 46
    invoke-static {p1}, Lcom/facebook/widget/FacebookDialog;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/facebook/cu;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/facebook/b/cl;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/facebook/widget/FacebookDialog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)[I

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/facebook/b/bw;->a(Landroid/content/Context;Ljava/lang/String;[I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/facebook/widget/FacebookDialog$PendingCall;ILandroid/content/Intent;Lcom/facebook/widget/c;)Z
    .locals 2

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$PendingCall;->c()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 356
    const/4 v0, 0x0

    .line 375
    :goto_0
    return v0

    .line 359
    :cond_0
    sget-object v0, Lcom/facebook/widget/FacebookDialog;->a:Lcom/facebook/ay;

    if-eqz v0, :cond_1

    .line 360
    sget-object v0, Lcom/facebook/widget/FacebookDialog;->a:Lcom/facebook/ay;

    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$PendingCall;->b()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ay;->a(Ljava/util/UUID;)V

    .line 363
    :cond_1
    if-eqz p3, :cond_2

    .line 364
    invoke-static {p2}, Lcom/facebook/b/bw;->c(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 365
    invoke-static {p2}, Lcom/facebook/b/bw;->d(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 366
    invoke-static {v0}, Lcom/facebook/b/bw;->a(Landroid/os/Bundle;)Ljava/lang/Exception;

    move-result-object v1

    .line 368
    invoke-interface {p3, p0, v1, v0}, Lcom/facebook/widget/c;->a(Lcom/facebook/widget/FacebookDialog$PendingCall;Ljava/lang/Exception;Landroid/os/Bundle;)V

    .line 375
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 370
    :cond_3
    invoke-static {p2}, Lcom/facebook/b/bw;->b(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 371
    invoke-interface {p3, p0, v0}, Lcom/facebook/widget/c;->a(Lcom/facebook/widget/FacebookDialog$PendingCall;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)[I
    .locals 1

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcom/facebook/widget/FacebookDialog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Lcom/facebook/ay;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/facebook/widget/FacebookDialog;->a:Lcom/facebook/ay;

    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/ay;

    invoke-direct {v0}, Lcom/facebook/ay;-><init>()V

    sput-object v0, Lcom/facebook/widget/FacebookDialog;->a:Lcom/facebook/ay;

    :cond_0
    sget-object v0, Lcom/facebook/widget/FacebookDialog;->a:Lcom/facebook/ay;

    return-object v0
.end method

.method private static b(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/facebook/widget/d;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 486
    const/4 v0, 0x0

    .line 487
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/d;

    .line 490
    invoke-interface {v0}, Lcom/facebook/widget/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 491
    :cond_0
    return-object v0
.end method

.method private static b(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 512
    const-string v0, "com.facebook.platform.action.request.FEED_DIALOG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    if-eqz p1, :cond_0

    const-string v0, "fb_dialogs_present_share_photo"

    .line 529
    :goto_0
    return-object v0

    .line 513
    :cond_0
    const-string v0, "fb_dialogs_present_share"

    goto :goto_0

    .line 516
    :cond_1
    const-string v0, "com.facebook.platform.action.request.MESSAGE_DIALOG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 517
    if-eqz p1, :cond_2

    const-string v0, "fb_dialogs_present_message_photo"

    goto :goto_0

    :cond_2
    const-string v0, "fb_dialogs_present_message"

    goto :goto_0

    .line 520
    :cond_3
    const-string v0, "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 521
    const-string v0, "fb_dialogs_present_share_og"

    goto :goto_0

    .line 522
    :cond_4
    const-string v0, "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 523
    const-string v0, "fb_dialogs_present_message_og"

    goto :goto_0

    .line 524
    :cond_5
    const-string v0, "com.facebook.platform.action.request.LIKE_DIALOG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 525
    const-string v0, "fb_dialogs_present_like"

    goto :goto_0

    .line 527
    :cond_6
    new-instance v0, Lcom/facebook/am;

    const-string v1, "An unspecified action was presented"

    invoke-direct {v0, v1}, Lcom/facebook/am;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 497
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/facebook/c;->a(Landroid/content/Context;)Lcom/facebook/c;

    move-result-object v0

    .line 498
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 499
    const-string v2, "fb_dialog_outcome"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-virtual {v0, p2, v1}, Lcom/facebook/c;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 501
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/facebook/widget/d;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 467
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/d;

    .line 468
    invoke-interface {v0}, Lcom/facebook/widget/d;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/facebook/b/cl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/b/cn;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/b/cn;->d()[I

    move-result-object v0

    .line 469
    :goto_1
    invoke-static {v1, v0}, Lcom/facebook/b/cl;->a([I[I)[I

    move-result-object v0

    move-object v1, v0

    .line 470
    goto :goto_0

    .line 468
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v4, 0x0

    invoke-interface {v0}, Lcom/facebook/widget/d;->b()I

    move-result v0

    aput v0, v2, v4

    move-object v0, v2

    goto :goto_1

    .line 472
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final a()Lcom/facebook/widget/FacebookDialog$PendingCall;
    .locals 5

    .prologue
    .line 324
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog;->c:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog;->d:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v2}, Lcom/facebook/widget/FacebookDialog$PendingCall;->a()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.facebook.platform.protocol.PROTOCOL_ACTION"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.facebook.platform.extra.PHOTOS"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v3, v2}, Lcom/facebook/widget/FacebookDialog;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Completed"

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/widget/FacebookDialog;->b(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog;->e:Lcom/facebook/widget/e;

    if-eqz v0, :cond_0

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog;->e:Lcom/facebook/widget/e;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog;->b:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/facebook/widget/e;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog;->c:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog;->c:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog;->d:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->a()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog;->d:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v2}, Lcom/facebook/widget/FacebookDialog$PendingCall;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 340
    :goto_0
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog;->d:Lcom/facebook/widget/FacebookDialog$PendingCall;

    return-object v0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    new-instance v1, Lcom/facebook/am;

    invoke-direct {v1, v0}, Lcom/facebook/am;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog;->d:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->a()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog;->d:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v2}, Lcom/facebook/widget/FacebookDialog$PendingCall;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
