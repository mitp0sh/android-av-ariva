.class final Lcom/avira/android/googleconnect/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/plus/a/b/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/avira/android/googleconnect/c;


# direct methods
.method constructor <init>(Lcom/avira/android/googleconnect/c;Lcom/google/android/gms/plus/a/b/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/avira/android/googleconnect/d;->d:Lcom/avira/android/googleconnect/c;

    iput-object p2, p0, Lcom/avira/android/googleconnect/d;->a:Lcom/google/android/gms/plus/a/b/a;

    iput-object p3, p0, Lcom/avira/android/googleconnect/d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/avira/android/googleconnect/d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/avira/android/googleconnect/d;->d:Lcom/avira/android/googleconnect/c;

    iget-object v0, v0, Lcom/avira/android/googleconnect/c;->a:Lcom/avira/android/googleconnect/GoogleTemplateActivity;

    iget-object v1, p0, Lcom/avira/android/googleconnect/d;->a:Lcom/google/android/gms/plus/a/b/a;

    iget-object v2, p0, Lcom/avira/android/googleconnect/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/avira/android/googleconnect/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/avira/android/googleconnect/GoogleTemplateActivity;->a(Lcom/google/android/gms/plus/a/b/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method
