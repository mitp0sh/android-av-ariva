.class final Lcom/avira/android/vdfupdate/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/vdfupdate/VdfUpdateActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/vdfupdate/VdfUpdateActivity;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/avira/android/vdfupdate/b;->a:Lcom/avira/android/vdfupdate/VdfUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/avira/android/vdfupdate/b;->a:Lcom/avira/android/vdfupdate/VdfUpdateActivity;

    invoke-static {v0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->d(Lcom/avira/android/vdfupdate/VdfUpdateActivity;)Z

    .line 304
    return-void
.end method
