def display_img(img):
    img_ = cv2.cvtColor(img,cv2.COLOR_BGR2RGB)
    plt.imshow(img_)
    plt.show()
    
inputImg = cv2.imread('car.jpg')
inpImg, plate = plate_detect(inputImg)
display_img(inpImg)

display_img(plate)