.class final Lcom/avira/android/googleconnect/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/googleconnect/GoogleConnectActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/googleconnect/GoogleConnectActivity;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/avira/android/googleconnect/a;->a:Lcom/avira/android/googleconnect/GoogleConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/avira/android/googleconnect/a;->a:Lcom/avira/android/googleconnect/GoogleConnectActivity;

    invoke-virtual {v0}, Lcom/avira/android/googleconnect/GoogleConnectActivity;->b()V

    .line 41
    return-void
.end method
