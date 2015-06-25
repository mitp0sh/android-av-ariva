.class final Lcom/avira/android/googleconnect/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/googleconnect/GoogleTemplateActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/googleconnect/GoogleTemplateActivity;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/avira/android/googleconnect/c;->a:Lcom/avira/android/googleconnect/GoogleTemplateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 157
    invoke-static {}, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->c()Ljava/lang/String;

    .line 158
    sget-object v0, Lcom/google/android/gms/plus/d;->AccountApi:Lcom/google/android/gms/plus/a;

    iget-object v1, p0, Lcom/avira/android/googleconnect/c;->a:Lcom/avira/android/googleconnect/GoogleTemplateActivity;

    invoke-static {v1}, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->a(Lcom/avira/android/googleconnect/GoogleTemplateActivity;)Lcom/google/android/gms/common/api/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/a;->a(Lcom/google/android/gms/common/api/d;)Ljava/lang/String;

    move-result-object v0

    .line 159
    sget-object v1, Lcom/google/android/gms/plus/d;->PeopleApi:Lcom/google/android/gms/plus/c;

    iget-object v2, p0, Lcom/avira/android/googleconnect/c;->a:Lcom/avira/android/googleconnect/GoogleTemplateActivity;

    invoke-static {v2}, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->a(Lcom/avira/android/googleconnect/GoogleTemplateActivity;)Lcom/google/android/gms/common/api/d;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/plus/c;->a(Lcom/google/android/gms/common/api/d;)Lcom/google/android/gms/plus/a/b/a;

    move-result-object v1

    .line 164
    :try_start_0
    iget-object v2, p0, Lcom/avira/android/googleconnect/c;->a:Lcom/avira/android/googleconnect/GoogleTemplateActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "oauth2:https://www.googleapis.com/auth/plus.login"

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    iget-object v3, p0, Lcom/avira/android/googleconnect/c;->a:Lcom/avira/android/googleconnect/GoogleTemplateActivity;

    iget-object v3, v3, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->a:Landroid/os/Handler;

    new-instance v4, Lcom/avira/android/googleconnect/d;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/avira/android/googleconnect/d;-><init>(Lcom/avira/android/googleconnect/c;Lcom/google/android/gms/plus/a/b/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/a/d; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/a/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    goto :goto_0

    .line 188
    :catch_1
    move-exception v0

    goto :goto_0

    .line 184
    :catch_2
    move-exception v0

    goto :goto_0

    .line 180
    :catch_3
    move-exception v0

    goto :goto_0
.end method
