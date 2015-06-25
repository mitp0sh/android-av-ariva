.class public final Lcom/avira/android/userprofile/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/avira/android/userprofile/f;

.field private b:Lcom/avira/android/i;


# direct methods
.method public constructor <init>(Lcom/avira/android/userprofile/f;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/avira/android/i;->ACTION_USER_DETAILS_EXIT:Lcom/avira/android/i;

    iput-object v0, p0, Lcom/avira/android/userprofile/b;->b:Lcom/avira/android/i;

    .line 14
    iput-object p1, p0, Lcom/avira/android/userprofile/b;->a:Lcom/avira/android/userprofile/f;

    .line 15
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/avira/android/i;->ACTION_USER_DETAILS_OK:Lcom/avira/android/i;

    iput-object v0, p0, Lcom/avira/android/userprofile/b;->b:Lcom/avira/android/i;

    .line 23
    iget-object v0, p0, Lcom/avira/android/userprofile/b;->a:Lcom/avira/android/userprofile/f;

    invoke-interface {v0}, Lcom/avira/android/userprofile/f;->a()Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/custom/BaseFragmentActivity;->finish()V

    .line 24
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/userprofile/b;->b:Lcom/avira/android/i;

    invoke-virtual {v1}, Lcom/avira/android/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/ApplicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 30
    return-void
.end method
