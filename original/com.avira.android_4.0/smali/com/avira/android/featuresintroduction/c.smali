.class public final Lcom/avira/android/featuresintroduction/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FEATINTROACTPRE"


# instance fields
.field private a:Lcom/avira/android/featuresintroduction/g;

.field private final b:Lcom/avira/android/custom/BaseFragmentActivity;

.field private c:Lcom/avira/android/i;

.field private d:Landroid/support/v4/view/aj;

.field private e:I

.field private final f:Lcom/avira/android/featuresintroduction/d;

.field private g:Lcom/avira/android/featuresintroduction/e;


# direct methods
.method public constructor <init>(Lcom/avira/android/featuresintroduction/g;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/featuresintroduction/c;->a:Lcom/avira/android/featuresintroduction/g;

    .line 38
    sget-object v0, Lcom/avira/android/i;->ACTION_FIRST_SCAN_OK:Lcom/avira/android/i;

    iput-object v0, p0, Lcom/avira/android/featuresintroduction/c;->c:Lcom/avira/android/i;

    .line 47
    iput-object p1, p0, Lcom/avira/android/featuresintroduction/c;->a:Lcom/avira/android/featuresintroduction/g;

    .line 48
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/c;->a:Lcom/avira/android/featuresintroduction/g;

    invoke-interface {v0}, Lcom/avira/android/featuresintroduction/g;->d()Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/featuresintroduction/c;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    .line 49
    new-instance v0, Lcom/avira/android/featuresintroduction/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avira/android/featuresintroduction/d;-><init>(Lcom/avira/android/featuresintroduction/c;B)V

    iput-object v0, p0, Lcom/avira/android/featuresintroduction/c;->f:Lcom/avira/android/featuresintroduction/d;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/avira/android/featuresintroduction/c;)Lcom/avira/android/featuresintroduction/e;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/c;->g:Lcom/avira/android/featuresintroduction/e;

    return-object v0
.end method

.method private b(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 178
    if-nez p1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/c;->a:Lcom/avira/android/featuresintroduction/g;

    invoke-interface {v0, v2, v1, v2}, Lcom/avira/android/featuresintroduction/g;->a(ZZZ)V

    .line 193
    :goto_0
    return-void

    .line 183
    :cond_0
    iget v0, p0, Lcom/avira/android/featuresintroduction/c;->e:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/c;->a:Lcom/avira/android/featuresintroduction/g;

    invoke-interface {v0, v1, v2, v1}, Lcom/avira/android/featuresintroduction/g;->a(ZZZ)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/c;->a:Lcom/avira/android/featuresintroduction/g;

    invoke-interface {v0, v1, v1, v2}, Lcom/avira/android/featuresintroduction/g;->a(ZZZ)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/avira/android/featuresintroduction/c;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const-string v1, "user_auto_logged_in"

    invoke-static {v0, v1, v6}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/avira/android/userprofile/s;

    invoke-direct {v0}, Lcom/avira/android/userprofile/s;-><init>()V

    invoke-virtual {v0}, Lcom/avira/android/userprofile/s;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Lcom/avira/android/userprofile/x;

    invoke-direct {v1}, Lcom/avira/android/userprofile/x;-><init>()V

    invoke-virtual {v1, v3}, Lcom/avira/android/userprofile/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3}, Lcom/avira/android/userprofile/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, ""

    :cond_1
    iget-object v4, p0, Lcom/avira/android/featuresintroduction/c;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const v5, 0x7f08033c

    invoke-virtual {v4, v5}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    aput-object v1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/featuresintroduction/c;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const v4, 0x7f08033d

    invoke-virtual {v1, v4}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/avira/android/featuresintroduction/c;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const v5, 0x7f08033e

    invoke-virtual {v4, v5}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v1, v4}, Lcom/avira/android/featuresintroduction/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/featuresintroduction/e;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/featuresintroduction/c;->g:Lcom/avira/android/featuresintroduction/e;

    iget-object v0, p0, Lcom/avira/android/featuresintroduction/c;->g:Lcom/avira/android/featuresintroduction/e;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const v0, 0x7f020013

    const v1, 0x7f0200ce

    const v3, 0x7f08016f

    const v4, 0x7f080170

    invoke-static {v0, v1, v3, v4}, Lcom/avira/android/featuresintroduction/e;->a(IIII)Lcom/avira/android/featuresintroduction/e;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f020014

    const v1, 0x7f0200cd

    const v3, 0x7f080171

    const v4, 0x7f080172

    invoke-static {v0, v1, v3, v4}, Lcom/avira/android/featuresintroduction/e;->a(IIII)Lcom/avira/android/featuresintroduction/e;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v0, Lcom/avira/android/featuresintroduction/f;

    iget-object v1, p0, Lcom/avira/android/featuresintroduction/c;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/avira/android/featuresintroduction/f;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/avira/android/featuresintroduction/c;->d:Landroid/support/v4/view/aj;

    .line 59
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/c;->a:Lcom/avira/android/featuresintroduction/g;

    iget-object v1, p0, Lcom/avira/android/featuresintroduction/c;->d:Landroid/support/v4/view/aj;

    invoke-interface {v0, v1}, Lcom/avira/android/featuresintroduction/g;->a(Landroid/support/v4/view/aj;)V

    .line 62
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/avira/android/featuresintroduction/c;->e:I

    .line 63
    iget v0, p0, Lcom/avira/android/featuresintroduction/c;->e:I

    if-le v0, v7, :cond_3

    .line 65
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/c;->a:Lcom/avira/android/featuresintroduction/g;

    iget v1, p0, Lcom/avira/android/featuresintroduction/c;->e:I

    invoke-interface {v0, v1}, Lcom/avira/android/featuresintroduction/g;->a(I)V

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/c;->a:Lcom/avira/android/featuresintroduction/g;

    invoke-interface {v0, v6}, Lcom/avira/android/featuresintroduction/g;->b(I)V

    .line 72
    invoke-direct {p0, v6}, Lcom/avira/android/featuresintroduction/c;->b(I)V

    .line 73
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/c;->a:Lcom/avira/android/featuresintroduction/g;

    invoke-interface {v0, p1}, Lcom/avira/android/featuresintroduction/g;->b(I)V

    .line 91
    invoke-direct {p0, p1}, Lcom/avira/android/featuresintroduction/c;->b(I)V

    .line 92
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/c;->a:Lcom/avira/android/featuresintroduction/g;

    invoke-interface {v0}, Lcom/avira/android/featuresintroduction/g;->a()I

    move-result v0

    .line 102
    if-lez v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/avira/android/featuresintroduction/c;->a:Lcom/avira/android/featuresintroduction/g;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Lcom/avira/android/featuresintroduction/g;->c(I)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v1, "FEATINTROACTPRE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to navigate to previous page as current page is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/c;->a:Lcom/avira/android/featuresintroduction/g;

    iget-object v1, p0, Lcom/avira/android/featuresintroduction/c;->a:Lcom/avira/android/featuresintroduction/g;

    invoke-interface {v1}, Lcom/avira/android/featuresintroduction/g;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/avira/android/featuresintroduction/g;->c(I)V

    .line 119
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lcom/avira/android/i;->ACTION_INTRO_OK:Lcom/avira/android/i;

    iput-object v0, p0, Lcom/avira/android/featuresintroduction/c;->c:Lcom/avira/android/i;

    .line 128
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/featuresintroduction/c;->c:Lcom/avira/android/i;

    invoke-virtual {v1}, Lcom/avira/android/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/ApplicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/c;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/avira/android/custom/BaseFragmentActivity;->finish()V

    .line 130
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/c;->g:Lcom/avira/android/featuresintroduction/e;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/c;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-static {v0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/featuresintroduction/c;->f:Lcom/avira/android/featuresintroduction/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;)V

    .line 199
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/c;->g:Lcom/avira/android/featuresintroduction/e;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/c;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-static {v0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/featuresintroduction/c;->f:Lcom/avira/android/featuresintroduction/d;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.avira.android.IMAGE_DOWNLOADED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 206
    :cond_0
    return-void
.end method
