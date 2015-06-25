.class final Lcom/avira/android/iab/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/iab/f;


# direct methods
.method constructor <init>(Lcom/avira/android/iab/f;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/avira/android/iab/g;->a:Lcom/avira/android/iab/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/avira/android/iab/g;->a:Lcom/avira/android/iab/f;

    iget-object v0, v0, Lcom/avira/android/iab/f;->b:Lcom/avira/android/iab/IABRequestService;

    iget-object v1, p0, Lcom/avira/android/iab/g;->a:Lcom/avira/android/iab/f;

    iget-object v1, v1, Lcom/avira/android/iab/f;->a:Lcom/avira/android/iab/models/IABRequest;

    invoke-static {v0, v1}, Lcom/avira/android/iab/IABRequestService;->a(Lcom/avira/android/iab/IABRequestService;Lcom/avira/android/iab/models/IABRequest;)V

    .line 171
    return-void
.end method
