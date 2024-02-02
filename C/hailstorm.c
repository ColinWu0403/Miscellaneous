#include <stdio.h>
#include <assert.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>

struct hailstone_struct {
    char location[48];
    int ttime;
    double energy;
    double velocity;
    float mass;
};

typedef struct hailstone_struct hailstone_t;

double analyze_storm(char * input, char * output) {
    
    assert(input[0] != '\0');
    assert(output[0] != '\0');
    
    FILE *fp = fopen(input, "r");
    
    if (fp == NULL) {
        return -1;
    }
    
    hailstone_t hail = {0};
    hailstone_t hailstones[100];
    double avrg_start_height = 0.0;
    int count = 0;
    
    while (1) {
        
        int line = fscanf(fp, "%[^~]~%d~%lf~%f\n",
            hail.location, &hail.ttime, &hail.energy, &hail.mass);
        
        if (line == EOF) {
            break;
        }
        else if (line != 4) {
            fclose(fp);
            fp == NULL;
            return -1;
        }
        else if (strlen(hail.location) > 48) {
            fclose(fp);
            fp == NULL;
            return -1;
        }
        
        double height = hail.energy/(hail.mass * 9.8);
        avrg_start_height += height;
        
        hailstones[count] = hail;
        hailstones[count].velocity = sqrt((hail.energy * 2) / (hail.mass));
        count++;
    }
    
    fclose(fp);
    fp == fopen(output, "w");
    
    if (fp == NULL)
        return -1;
    
    int index = 0;
    
    while (1) {
        
        if (hailstones[index].velocity == 0) {
            break;
        }
        else if (hailstones[index].ttime == 0) {
            fclose(fp);
            fp == NULL;
            return -1;
        }
        
        fprintf(fp, "%d: %.3f\n", hailstones[index].ttime, hailstones[index].velocity);
        
        index++;
    }
    
    fclose(fp);
    fp == NULL;
    
    return avrg_start_height / count;
}

int main() {
    double a_s_h = analyze_storm("input", "output");    
    
    printf("%.6lf\n", a_s_h);
    
    return 0;
}
