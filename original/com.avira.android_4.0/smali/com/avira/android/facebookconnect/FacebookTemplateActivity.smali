.class public abstract Lcom/avira/android/facebookconnect/FacebookTemplateActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/facebookconnect/g;


# static fields
.field private static c:Ljava/lang/String;


# instance fields
.field a:Lcom/avira/android/facebookconnect/d;

.field private b:Lcom/avira/android/facebookconnect/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/avira/android/facebookconnect/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/facebookconnect/FacebookTemplateActivity;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    .line 16
    sget-object v0, Lcom/avira/android/facebookconnect/h;->NONE:Lcom/avira/android/facebookconnect/h;

    iput-object v0, p0, Lcom/avira/android/facebookconnect/FacebookTemplateActivity;->b:Lcom/avira/android/facebookconnect/h;

    return-void
.end method

.method private c()Lcom/avira/android/facebookconnect/d;
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/avira/android/facebookconnect/FacebookTemplateActivity;->c:Ljava/lang/String;

    .line 80
    const-string v0, "facebookFragment"

    invoke-virtual {p0}, Lcom/avira/android/facebookconnect/FacebookTemplateActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/avira/android/facebookconnect/d;

    return-object v0
.end method


# virtual methods
.method public final a_()Lcom/avira/android/facebookconnect/h;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/avira/android/facebookconnect/FacebookTemplateActivity;->c:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/avira/android/facebookconnect/FacebookTemplateActivity;->b:Lcom/avira/android/facebookconnect/h;

    .line 125
    return-object v0
.end method

.method protected final e()V
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/avira/android/facebookconnect/FacebookTemplateActivity;->c:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/avira/android/facebookconnect/h;->LOGIN:Lcom/avira/android/facebookconnect/h;

    iput-object v0, p0, Lcom/avira/android/facebookconnect/FacebookTemplateActivity;->b:Lcom/avira/android/facebookconnect/h;

    .line 88
    iget-object v0, p0, Lcom/avira/android/facebookconnect/FacebookTemplateActivity;->a:Lcom/avira/android/facebookconnect/d;

    invoke-virtual {v0}, Lcom/avira/android/facebookconnect/d;->a()V

    .line 89
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/avira/android/facebookconnect/FacebookTemplateActivity;->c:Ljava/lang/String;

    .line 42
    invoke-super {p0, p1, p2, p3}, Lcom/avira/android/custom/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 43
    invoke-static {}, Lcom/facebook/by;->h()Lcom/facebook/by;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/by;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 44
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lcom/avira/android/facebookconnect/FacebookTemplateActivity;->c:Ljava/lang/String;

    .line 33
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget-object v0, Lcom/avira/android/facebookconnect/FacebookTemplateActivity;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/avira/android/facebookconnect/FacebookTemplateActivity;->c()Lcom/avira/android/facebookconnect/d;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/avira/android/facebookconnect/FacebookTemplateActivity;->c:Ljava/lang/String;

    new-instance v0, Lcom/avira/android/facebookconnect/d;

    invoke-direct {v0}, Lcom/avira/android/facebookconnect/d;-><init>()V

    iput-object v0, p0, Lcom/avira/android/facebookconnect/FacebookTemplateActivity;->a:Lcom/avira/android/facebookconnect/d;

    iget-object v0, p0, Lcom/avira/android/facebookconnect/FacebookTemplateActivity;->a:Lcom/avira/android/facebookconnect/d;

    const-string v1, "facebookFragment"

    invoke-virtual {p0}, Lcom/avira/android/facebookconnect/FacebookTemplateActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_1
    sget-object v0, Lcom/avira/android/facebookconnect/FacebookTemplateActivity;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/avira/android/facebookconnect/FacebookTemplateActivity;->c()Lcom/avira/android/facebookconnect/d;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/facebookconnect/FacebookTemplateActivity;->a:Lcom/avira/android/facebookconnect/d;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/avira/android/facebookconnect/FacebookTemplateActivity;->c:Ljava/lang/String;

    .line 25
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onResume()V

    .line 27
    return-void
.end method
