.class public abstract Lcom/avira/android/googleconnect/GoogleTemplateActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/g;
.implements Lcom/google/android/gms/common/api/h;


# static fields
.field private static final RC_SIGN_IN:I = 0xda48c

.field private static final TAG:Ljava/lang/String;


# instance fields
.field a:Landroid/os/Handler;

.field private b:Lcom/google/android/gms/common/api/d;

.field private c:Z

.field private d:Z

.field private e:Lcom/google/android/gms/common/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->b:Lcom/google/android/gms/common/api/d;

    .line 50
    iput-object v0, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->e:Lcom/google/android/gms/common/a;

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/avira/android/googleconnect/GoogleTemplateActivity;)Lcom/google/android/gms/common/api/d;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->b:Lcom/google/android/gms/common/api/d;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->TAG:Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->b:Lcom/google/android/gms/common/api/d;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/d;->a()V

    .line 231
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 148
    sget-object v0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->TAG:Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->d:Z

    .line 151
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/avira/android/googleconnect/c;

    invoke-direct {v1, p0}, Lcom/avira/android/googleconnect/c;-><init>(Lcom/avira/android/googleconnect/GoogleTemplateActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 202
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/a;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 91
    sget-object v0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->TAG:Ljava/lang/String;

    .line 92
    iget-boolean v0, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->c:Z

    .line 97
    invoke-virtual {p1}, Lcom/google/android/gms/common/a;->b()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const v2, 0xda48c

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->c:Z

    if-nez v0, :cond_1

    .line 111
    iput-object p1, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->e:Lcom/google/android/gms/common/a;

    .line 113
    iget-boolean v0, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->d:Z

    if-eqz v0, :cond_1

    .line 117
    sget-object v0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->e:Lcom/google/android/gms/common/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->c:Z

    iget-object v0, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->e:Lcom/google/android/gms/common/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a;->b()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const v2, 0xda48c

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    :cond_1
    :goto_1
    return-void

    .line 103
    :catch_0
    move-exception v0

    iput-boolean v7, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->c:Z

    .line 104
    iget-object v0, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->b:Lcom/google/android/gms/common/api/d;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/d;->a()V

    goto :goto_0

    .line 117
    :catch_1
    move-exception v0

    iput-boolean v7, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->c:Z

    iget-object v0, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->b:Lcom/google/android/gms/common/api/d;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/d;->a()V

    goto :goto_1
.end method

.method protected abstract a(Lcom/google/android/gms/plus/a/b/a;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->TAG:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->b:Lcom/google/android/gms/common/api/d;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/google/android/gms/common/api/f;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/f;->a(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/f;->a(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/common/api/f;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/plus/d;->API:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/f;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/f;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/plus/d;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/j;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/f;->a(Lcom/google/android/gms/common/api/j;)Lcom/google/android/gms/common/api/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f;->a()Lcom/google/android/gms/common/api/d;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->b:Lcom/google/android/gms/common/api/d;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->b:Lcom/google/android/gms/common/api/d;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/d;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->b:Lcom/google/android/gms/common/api/d;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/d;->a()V

    .line 86
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->d:Z

    .line 87
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 207
    sget-object v0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->TAG:Ljava/lang/String;

    .line 208
    sget-object v0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult requestCode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " responseCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    const v0, 0xda48c

    if-ne p1, v0, :cond_2

    .line 212
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 214
    iput-boolean v2, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->d:Z

    .line 217
    :cond_0
    iput-boolean v2, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->c:Z

    .line 219
    iget-object v0, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->b:Lcom/google/android/gms/common/api/d;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->b:Lcom/google/android/gms/common/api/d;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/d;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->b:Lcom/google/android/gms/common/api/d;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/d;->a()V

    .line 224
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->TAG:Ljava/lang/String;

    .line 62
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onStop()V

    .line 63
    iget-object v0, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->b:Lcom/google/android/gms/common/api/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->b:Lcom/google/android/gms/common/api/d;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->b:Lcom/google/android/gms/common/api/d;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/d;->b()V

    .line 67
    :cond_0
    return-void
.end method
